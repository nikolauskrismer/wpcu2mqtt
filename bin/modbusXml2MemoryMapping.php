<?php

function getOptions() {
	$shortopts  = "";
	$shortopts .= "l:";
	$shortopts .= "o:";
	$shortopts .= "s:";

	$longopts  = array(
		"language:",
		"output:",
		"source:"
	);

	$options = getopt($shortopts, $longopts);
//	print_r($options);

	return $options;
}

function getTypes() {
	return array(
		"VT_ARRAY|VT_UI1" => "TYPE_BITS",
		"VT_BOOL" => "TYPE_BOOL",
		"VT_BSTR" => "TYPE_STRING",
		"VT_DATE" => "TYPE_DATETIME",
		"VT_I4" => "TYPE_INT",
		"VT_R4" => "TYPE_FLOAT, format => \"%.2f\"",
		"VT_TIME" => "TYPE_TIME",
		"VT_UI1" => "TYPE_INT",
		"VT_UI2" => "TYPE_INT"
	);
}

function parseOption($shortName, $longName, $options, $defaultValue) {
	if (isset($options[$longName])) {
		return $options["source"];
	}
	if (isset($options[$shortName])) {
		return $options["s"];
	}
	if (!empty($defaultValue)) {
		return $defaultValue;
	}

	printUsage();
	return null;
}

function prepareTag($tag, $types, $languageKey) {
	$t = $tag;

	if ($t->datatype == "VT_ARRAY|VT_UI1") {
		$t->regcnt = abs($t->dataformat);
		if ($t->regcnt <= 1) {
			$t->datatype = "VT_BOOL";
		}
	}
		

	$t->caption = toCaption($t, $languageKey);
	$t->datatype = $types[(string) $t->datatype];
	$t->regaddr = toHexAddr($t->regaddr);
	$t->regcnt = toHexSize($t->regcnt);
	$t->unit = str_replace("°", "&deg;", trim($t->unit));

	return $t;
}

function printUsage() {
        echo "Usage: php modbusXml2MemoryMapping --source=\"/path/to/waterkotte_modebus/_C<myfirmwareversion>.xml\" [--output=\"WPMemoryMappingTest.pm\" --language=\"en\"]\n";
}

function toCaption($array, $languageKey) {
	$val = $array->$languageKey;
	if (empty($val)) {
		$val = $array->caption_EN;
	}

	return $val;
}

function toHexAddr($addr) {
	return ("0x".substr("000" . strtoupper(dechex((float) $addr)), -4));
}

function toHexSize($size) {
	return ("0x".substr(strtoupper(dechex((float) $size)), -1));
}

function writeFile($xml_data, $output, $types, $language) {
	$languageKey = "caption_" . $language;
	$f = fopen($output, "w") or die("Unable to open output file!");

	// Writing header
	fwrite($f, "%wp_memory = (\n");

	// Writing values
	foreach ($xml_data as $item) {
		fwrite($f, "\n    # " . toCaption($item, $languageKey) . " (item: " . $item->itemname. ")\n");
		foreach($item->tag as $tag) {
			$t = prepareTag($tag, $types, $languageKey); 
			$type = $t->datatype;

			fwrite($f, "    '" . $t->name . "' => { " .
				"function => " . $t->regplc . ", " .
				"addr => " . $t->regaddr . ", " .
				"size => " . $t->regcnt . ", " . 
				"acl => '', " . 
				"type => " . $t->datatype . ", " .
				"caption => '" . $t->caption . "', " . 
				"unit => '" . $t->unit . "'" .
			"},\n");
		}
	}
// 'RTCTime'                                   => { function => 4, addr => 0x0001, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'Time', unit => ''},

	// Writing datatypes
	fwrite($f, ");\n\n");
	fwrite($f, "%dataTypes = (\n");
	fwrite($f, "    TYPE_FLOAT    => 1,\n");
	fwrite($f, "    TYPE_DATETIME => 2,\n");
	fwrite($f, "    TYPE_INT      => 3,\n");
	fwrite($f, "    TYPE_BOOL     => 4,\n");
	fwrite($f, "    TYPE_TIME     => 5,\n");
	fwrite($f, "    TYPE_BYTE     => 6,\n");
	fwrite($f, "    TYPE_BITS     => 7,\n");
	fwrite($f, "    TYPE_STRING   => 8\n");
	fwrite($f, ");\n\n");
	fwrite($f, "return 1;\n");

	fclose($f);
}

$options = getOptions();
$filename = parseOption("s", "source", $options, null);
if (empty($filename)) {
	die("No source file specified!");
}

$output = parseOption("o", "output", $options, "WPMemoryMapping.pm");
$language = parseOption("l", "language", $options, "en");

writeFile(simplexml_load_file($filename), $output, getTypes(), strtoupper($language));

?>

