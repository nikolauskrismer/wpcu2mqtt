%wp_memory = (

    # Settings (item: Settings)
    'RTCTime' => { function => 4, addr => 0x0001, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'time', unit => ''},
    'RTCDate' => { function => 4, addr => 0x00D1, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'date', unit => ''},
    'LngSelect' => { function => 4, addr => 0x01A1, size => 0x1, acl => '', type => TYPE_INT, caption => 'language', unit => ''},

    # Measured Values (item: MeasuredValue)
    'OutdoorTemp' => { function => 3, addr => 0x01B1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T outdoor', unit => '&deg;C'},
    'OutdoorTemp1h' => { function => 4, addr => 0x01D1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T outdoor 1h', unit => '&deg;C'},
    'OutdoorTemp24h' => { function => 4, addr => 0x01F1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T outdoor 24h', unit => '&deg;C'},
    'ReturnTempNominal' => { function => 4, addr => 0x0211, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return target', unit => '&deg;C'},
    'ReturnTemp' => { function => 3, addr => 0x0231, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return real', unit => '&deg;C'},
    'FlowTemp' => { function => 3, addr => 0x0251, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T heating out', unit => '&deg;C'},
    'DomesticWaterTNominal' => { function => 4, addr => 0x0271, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T water target', unit => '&deg;C'},
    'DomesticWaterTemp' => { function => 3, addr => 0x0291, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T water real', unit => '&deg;C'},
    'RoomTemp' => { function => 3, addr => 0x02B1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T pilot room', unit => '&deg;C'},
    'RoomTemp1h' => { function => 4, addr => 0x02D1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T room 1h', unit => '&deg;C'},
    'HeatSourceIn' => { function => 3, addr => 0x02F1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T source in', unit => '&deg;C'},
    'HeatSourceOut' => { function => 3, addr => 0x0311, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T source out', unit => '&deg;C'},
    'EvaporationTemp' => { function => 3, addr => 0x0331, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T evaporator', unit => '&deg;C'},
    'CondensationTemp' => { function => 3, addr => 0x0351, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T condenser', unit => '&deg;C'},
    'SuctionGasTemp' => { function => 3, addr => 0x0371, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T suction line', unit => '&deg;C'},
    'PoolTemp' => { function => 3, addr => 0x0391, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T pool', unit => '&deg;C'},
    'EvaporationPress' => { function => 3, addr => 0x03B1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'p evaporator', unit => 'bar'},
    'CondensationPress' => { function => 3, addr => 0x03D1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'p condenser', unit => 'bar'},

    # Heating (item: Heating)
    'HeatTimeOn' => { function => 4, addr => 0x0401, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time start', unit => ''},
    'HeatTimeOff' => { function => 4, addr => 0x0411, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time stop', unit => ''},
    'HeatCharacteristicSetPoint' => { function => 4, addr => 0x0421, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T out base', unit => '&deg;C'},
    'HeatCharacteristicSetPointBaseTemp' => { function => 4, addr => 0x0441, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return base', unit => '&deg;C'},
    'HeatCharacteristicGradient' => { function => 4, addr => 0x0461, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T curve gradient', unit => '%'},
    'HeatCharacteristicLimit' => { function => 4, addr => 0x0481, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T curve limit', unit => '&deg;C'},
    'HeatReturnTemp' => { function => 4, addr => 0x04A1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return real', unit => '&deg;C'},
    'HeatReturnTempNominal' => { function => 4, addr => 0x04C1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return target', unit => '&deg;C'},
    'HeatTempHyst' => { function => 4, addr => 0x04E1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hysteresis', unit => 'K'},
    'RoomTempNominal' => { function => 4, addr => 0x0501, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T room target', unit => '&deg;C'},
    'RoomTempFactor' => { function => 4, addr => 0x0521, size => 0x1, acl => '', type => TYPE_INT, caption => 'T room influence', unit => '%'},
    'HeatIncreaseTimeOn' => { function => 4, addr => 0x0541, size => 0x1, acl => '', type => TYPE_TIME, caption => 'setpt chg start', unit => ''},
    'HeatIncreaseTimeOff' => { function => 4, addr => 0x0551, size => 0x1, acl => '', type => TYPE_TIME, caption => 'setpt chg stop', unit => ''},
    'HeatIncreaseSetPtOffset' => { function => 4, addr => 0x0561, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'setpoint change', unit => 'K'},
    'AuxilaryModeHeating' => { function => 4, addr => 0x0581, size => 0x1, acl => '', type => TYPE_INT, caption => 'auxilary mode', unit => ''},
    'AuxilaryMaxDifference' => { function => 4, addr => 0x0591, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'aux. Max diff.', unit => 'K'},

    # Cooling (item: Cooling)
    'CoolTimeOn' => { function => 4, addr => 0x05C1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time start', unit => ''},
    'CoolTimeOff' => { function => 4, addr => 0x05D1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time stop', unit => ''},
    'CoolCharacteristicSetPoint' => { function => 4, addr => 0x05E1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T out base', unit => '&deg;C'},
    'CoolCharacteristicSetPointBaseTemp' => { function => 4, addr => 0x0601, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return base', unit => '&deg;C'},
    'CoolCharacteristicGradient' => { function => 4, addr => 0x0621, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T curve gradient', unit => '%'},
    'CoolCharacteristicLimit' => { function => 4, addr => 0x0641, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T curve limit', unit => '&deg;C'},
    'CoolReturnTemp' => { function => 4, addr => 0x0661, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return real', unit => '&deg;C'},
    'CoolReturnTempNominal' => { function => 4, addr => 0x0681, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return target', unit => '&deg;C'},
    'CoolReturnTempHyst' => { function => 4, addr => 0x06A1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hysteresis', unit => 'K'},

    # Hot Water (item: Hotwater)
    'DomesticWaterTimeOn' => { function => 4, addr => 0x06D1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time start', unit => ''},
    'DomesticWaterTimeOff' => { function => 4, addr => 0x06E1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time stop', unit => ''},
    'DomesticWaterTempActual' => { function => 4, addr => 0x06F1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return real', unit => '&deg;C'},
    'DomesticWaterTempNominal' => { function => 4, addr => 0x0711, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return target', unit => '&deg;C'},
    'DomesticWaterTempHyst' => { function => 4, addr => 0x0731, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hysteresis', unit => 'K'},
    'LegionellaTimeOn' => { function => 4, addr => 0x0761, size => 0x1, acl => '', type => TYPE_TIME, caption => 'E-NEW Begin', unit => ''},
    'LegionellaTimeOff' => { function => 4, addr => 0x0771, size => 0x1, acl => '', type => TYPE_TIME, caption => 'E-NEW End', unit => ''},
    'LegionellaTempNominal' => { function => 4, addr => 0x0781, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'E-NEW Nominal', unit => ''},
    'DWNumberOfCompressors' => { function => 4, addr => 0x07A1, size => 0x1, acl => '', type => TYPE_INT, caption => 'auxilary compr.', unit => ''},

    # Pool (item: Pool)
    'PoolTimeOn' => { function => 4, addr => 0x07C1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time start', unit => ''},
    'PoolTimeOff' => { function => 4, addr => 0x07D1, size => 0x1, acl => '', type => TYPE_TIME, caption => 'time stop', unit => ''},
    'PoolTempActual' => { function => 4, addr => 0x07E1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return real', unit => '&deg;C'},
    'PoolTempNominal' => { function => 4, addr => 0x0801, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return target', unit => '&deg;C'},
    'PoolTempHyst' => { function => 4, addr => 0x0821, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hysteresis', unit => 'K'},
    'PoolMaxRunTime' => { function => 4, addr => 0x0841, size => 0x1, acl => '', type => TYPE_INT, caption => 'max run period', unit => 'min'},
    'PoolNumberOfCompressors' => { function => 4, addr => 0x0851, size => 0x1, acl => '', type => TYPE_INT, caption => 'auxilary compr.', unit => ''},

    # Auxiliary Heat (item: AuxiliaryHeat)
    'AuxiliaryHeatMode' => { function => 4, addr => 0x0861, size => 0x1, acl => '', type => TYPE_INT, caption => 'step 2 mode', unit => ''},
    'AuxiliaryHeatTempLimitSourceIn' => { function => 4, addr => 0x0871, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'LimitHeatSrcIn', unit => '&deg;C'},

    #  (item: OperatingHours)
    'OHCompressor1' => { function => 4, addr => 0x0891, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'compressor 1', unit => 'h'},
    'OHCompressor2' => { function => 4, addr => 0x08B1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'compressor 2', unit => 'h'},
    'OHHeatingCompressor' => { function => 4, addr => 0x08D1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'heating  comp.', unit => 'h'},
    'OHDomesticWaterCompressor' => { function => 4, addr => 0x08F1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hot water comp.', unit => 'h'},
    'OHHeatingAuxilary' => { function => 4, addr => 0x0911, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'heating  aux.', unit => 'h'},
    'OHDomesticWaterAuxilary' => { function => 4, addr => 0x0931, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'hot water aux.', unit => 'h'},
    'OHPoolCompressor' => { function => 4, addr => 0x0951, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'pool', unit => 'h'},
    'OHCooling' => { function => 4, addr => 0x0971, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'cooling', unit => 'h'},

    # Failure Data (item: Failure)
    'FailureTimeStampTIME' => { function => 4, addr => 0x0991, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'time', unit => ''},
    'FailureTimeStampDATE' => { function => 4, addr => 0x0A61, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'date', unit => ''},
    'FailureEvaporationPress' => { function => 4, addr => 0x0B71, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'P evaporator', unit => 'bar'},
    'FailureCondensationPress' => { function => 4, addr => 0x0B91, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'P condenser', unit => 'bar'},
    'FailureTempReturn' => { function => 4, addr => 0x0BB1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T return', unit => '&deg;C'},
    'FailureTempFlow' => { function => 4, addr => 0x0BD1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T heating out', unit => '&deg;C'},
    'FailureTempHeatSourceIn' => { function => 4, addr => 0x0BF1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T source in', unit => '&deg;C'},
    'FailureTempHeatSourceOut' => { function => 4, addr => 0x0C11, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T source out', unit => '&deg;C'},
    'FailureTempSuctionGas' => { function => 4, addr => 0x0C31, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T suction line', unit => '&deg;C'},
    'FailureTempOutdoor' => { function => 4, addr => 0x0C51, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => '', unit => '&deg;C'},
    'FailureTempDomesticWater' => { function => 4, addr => 0x0C71, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T hot water', unit => '&deg;C'},
    'FailureTempPool' => { function => 4, addr => 0x0C91, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'T pool', unit => '&deg;C'},

    # Service Menu (item: Service)
    'View' => { function => 4, addr => 0x0CB1, size => 0x1, acl => '', type => TYPE_INT, caption => 'view', unit => ''},
    'Pincode' => { function => 4, addr => 0x0CC1, size => 0x2, acl => '', type => TYPE_INT, caption => 'PIN-code', unit => ''},
    'SetDefaultSettings' => { function => 4, addr => 0x0CE1, size => 0x1, acl => '', type => TYPE_INT, caption => 'factory reset', unit => ''},
    'SoftwareReset' => { function => 4, addr => 0x0CF1, size => 0x1, acl => '', type => TYPE_INT, caption => 'Software Reset', unit => ''},
    'HeatingUpScreed' => { function => 4, addr => 0x0D11, size => 0x1, acl => '', type => TYPE_INT, caption => 'first heating 7d', unit => ''},
    'ScreedTempNominal' => { function => 4, addr => 0x0D21, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'first heating temp', unit => '&deg;C'},
    'SourcePumpPreRunPeriod' => { function => 4, addr => 0x0D41, size => 0x1, acl => '', type => TYPE_INT, caption => '', unit => 's'},
    'HeatingPumpPreRunPeriod' => { function => 4, addr => 0x0D51, size => 0x1, acl => '', type => TYPE_INT, caption => '', unit => 's'},
    'HeatingPumpAfterRunPeriod' => { function => 4, addr => 0x0D61, size => 0x1, acl => '', type => TYPE_INT, caption => 'after run period', unit => 'min'},
    'OffsetPn' => { function => 4, addr => 0x0D71, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'offset press low', unit => ''},
    'OffsetPh' => { function => 4, addr => 0x0D91, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'offset pressHigh', unit => ''},
    'OperatingHoursSelector' => { function => 4, addr => 0x0DB1, size => 0x1, acl => '', type => TYPE_INT, caption => 'select oh', unit => ''},
    'OperatingHoursValue' => { function => 4, addr => 0x0DC1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'oh value new', unit => 'h'},
    'NDStatus' => { function => 4, addr => 0x0DE1, size => 0x1, acl => '', type => TYPE_INT, caption => 'ND Status', unit => ''},

    # Warning/Alarming (item: ErrorEvents)

    # Communication (item: Communication)
    'CommMode' => { function => 4, addr => 0x0E91, size => 0x1, acl => '', type => TYPE_INT, caption => 'comm. mode', unit => ''},
    'Ringtones' => { function => 4, addr => 0x0EA1, size => 0x1, acl => '', type => TYPE_INT, caption => 'ringtones', unit => ''},

    # Default Values (item: Default)
    'HeatSourceMinT' => { function => 4, addr => 0x0F01, size => 0x1, acl => '', type => TYPE_INT, caption => 'heat source Tmin', unit => ''},
    'Refrigerant' => { function => 4, addr => 0x0F11, size => 0x1, acl => '', type => TYPE_INT, caption => 'refrigerant', unit => ''},
    'NumberOfCompressors' => { function => 4, addr => 0x0F21, size => 0x1, acl => '', type => TYPE_INT, caption => 'num. Compr.', unit => ''},
    'TimeScaler' => { function => 4, addr => 0x0F31, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'time factor', unit => ''},
    'PSourcePump' => { function => 4, addr => 0x0F51, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'Psourcepump', unit => 'kW'},
    'ModemType' => { function => 4, addr => 0x0F71, size => 0x1, acl => '', type => TYPE_INT, caption => 'modem type', unit => ''},
    'ExtControlCode' => { function => 4, addr => 0x0F81, size => 0x2, acl => '', type => TYPE_INT, caption => 'external control', unit => ''},

    # Powerinformation (item: PowerCalculation)
    'Pelectric' => { function => 4, addr => 0x0FA1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'P electric', unit => 'kW'},
    'Pthermal' => { function => 4, addr => 0x0FC1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'P thermal', unit => 'kW'},
    'COP' => { function => 4, addr => 0x0FE1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'COP', unit => ''},
    'SelectedYear' => { function => 4, addr => 0x1001, size => 0x1, acl => '', type => TYPE_INT, caption => 'selected year', unit => ''},
    'SelectedValue' => { function => 4, addr => 0x1011, size => 0x1, acl => '', type => TYPE_INT, caption => 'selected type', unit => ''},
    'PowerValue' => { function => 4, addr => 0x1021, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'selected value', unit => 'kwH/-'},

    # Information (item: Info)
    'FirmwareVersion' => { function => 4, addr => 0x1041, size => 0x8, acl => '', type => TYPE_STRING, caption => 'firmware version', unit => ''},
    'FirmwareDate' => { function => 4, addr => 0x10C1, size => 0x8, acl => '', type => TYPE_STRING, caption => 'firmware date', unit => ''},
    'ManufType' => { function => 4, addr => 0x1141, size => 0x8, acl => '', type => TYPE_STRING, caption => 'model', unit => ''},
    'ManufSerialNum' => { function => 4, addr => 0x11C1, size => 0x8, acl => '', type => TYPE_STRING, caption => 'serial number', unit => ''},
    'SetManufType' => { function => 4, addr => 0x1241, size => 0x8, acl => '', type => TYPE_STRING, caption => 'set model', unit => ''},
    'SetManufSerialNum' => { function => 4, addr => 0x12C1, size => 0x8, acl => '', type => TYPE_STRING, caption => 'set serial nr', unit => ''},

    # System (item: System)
    'DOBuffer' => { function => 1, addr => 0x1351, size => 0xA, acl => '', type => TYPE_BITS, caption => 'DO-buffer', unit => ''},
    'DIBuffer' => { function => 1, addr => 0x1361, size => 0x8, acl => '', type => TYPE_BITS, caption => 'DI-buffer', unit => ''},
    'ADC_Enabled' => { function => 1, addr => 0x1371, size => 0xC, acl => '', type => TYPE_BITS, caption => 'ADC enabled', unit => ''},
    'ADC_Error' => { function => 1, addr => 0x1381, size => 0xC, acl => '', type => TYPE_BITS, caption => 'ADC error', unit => ''},
    'ADC_ErrorHiLo' => { function => 1, addr => 0x1391, size => 0xC, acl => '', type => TYPE_BITS, caption => 'ADC errorHiLo', unit => ''},
    'ADC_ErrorEnabled' => { function => 1, addr => 0x13A1, size => 0xC, acl => '', type => TYPE_BITS, caption => 'ADC ErrorEnabled', unit => ''},
    'SelectedADC' => { function => 4, addr => 0x13B1, size => 0x1, acl => '', type => TYPE_INT, caption => 'selected type', unit => ''},
    'ADC_Result' => { function => 3, addr => 0x13C1, size => 0x1, acl => '', type => TYPE_INT, caption => 'ADC Counter', unit => ''},
    'ADC_CorrFct' => { function => 4, addr => 0x13D1, size => 0x2, acl => '', type => TYPE_FLOAT, format => "%.2f", caption => 'ADC CorrFct', unit => ''},

    # Debug (item: Debug)
    'LastStartTime' => { function => 4, addr => 0x13F1, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'Last Start Time', unit => ''},
    'LastStartDate' => { function => 4, addr => 0x14C1, size => 0xD, acl => '', type => TYPE_DATETIME, caption => 'Last Start Date', unit => ''},
    'LCD_Display_Line_1' => { function => 4, addr => 0x1591, size => 0x8, acl => '', type => TYPE_STRING, caption => 'LCD line 1', unit => ''},
    'LCD_Display_Line_2' => { function => 4, addr => 0x1611, size => 0x8, acl => '', type => TYPE_STRING, caption => 'LCD line 2', unit => ''},
    'DebugCh1' => { function => 4, addr => 0x1691, size => 0x2, acl => '', type => TYPE_INT, caption => 'debug1', unit => ''},
    'ServiceStatus' => { function => 4, addr => 0x16B1, size => 0x1, acl => '', type => TYPE_INT, caption => 'servicestatus', unit => ''},
    'OperatingMode' => { function => 4, addr => 0x16C1, size => 0x1, acl => '', type => TYPE_INT, caption => 'operatingmode', unit => ''},
    'ModemStatus' => { function => 4, addr => 0x16D1, size => 0x1, acl => '', type => TYPE_INT, caption => 'modemstatus', unit => ''},
);

%dataTypes = (
    TYPE_FLOAT    => 1,
    TYPE_DATETIME => 2,
    TYPE_INT      => 3,
    TYPE_BOOL     => 4,
    TYPE_TIME     => 5,
    TYPE_BYTE     => 6,
    TYPE_BITS     => 7,
    TYPE_STRING   => 8
);

return 1;
