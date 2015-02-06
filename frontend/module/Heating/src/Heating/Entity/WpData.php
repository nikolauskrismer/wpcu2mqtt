<?php

namespace Heating\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * WpData
 *
 * @ORM\Table(name="wp_data", indexes={@ORM\Index(name="wpdata_timestamp", columns={"timestamp"})})
 * @ORM\Entity
 */
class WpData
{
    /**
     * @var integer
     *
     * @ORM\Column(name="OperatingMode", type="integer", nullable=false)
     */
    private $operatingmode;

    /**
     * @var integer
     *
     * @ORM\Column(name="ADC_ErrorEnabled", type="integer", nullable=false)
     */
    private $adcErrorenabled;

    /**
     * @var float
     *
     * @ORM\Column(name="DomesticWaterTNominal", type="float", precision=10, scale=0, nullable=false)
     */
    private $domesticwatertnominal;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="LastStartDate", type="datetime", nullable=false)
     */
    private $laststartdate;

    /**
     * @var float
     *
     * @ORM\Column(name="FailureCondensationPress", type="float", precision=10, scale=0, nullable=false)
     */
    private $failurecondensationpress;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="LastStartTime", type="datetime", nullable=false)
     */
    private $laststarttime;

    /**
     * @var float
     *
     * @ORM\Column(name="CoolCharacteristicSetPointBaseTemp", type="float", precision=10, scale=0, nullable=false)
     */
    private $coolcharacteristicsetpointbasetemp;

    /**
     * @var integer
     *
     * @ORM\Column(name="DebugCh1", type="integer", nullable=false)
     */
    private $debugch1;

    /**
     * @var float
     *
     * @ORM\Column(name="SuctionGasTemp", type="float", precision=10, scale=0, nullable=false)
     */
    private $suctiongastemp;

    /**
     * @var integer
     *
     * @ORM\Column(name="ADC_ErrorHiLo", type="integer", nullable=false)
     */
    private $adcErrorhilo;

    /**
     * @var integer
     *
     * @ORM\Column(name="SelectedADC", type="integer", nullable=false)
     */
    private $selectedadc;

    /**
     * @var integer
     *
     * @ORM\Column(name="ModemStatus", type="integer", nullable=false)
     */
    private $modemstatus;

    /**
     * @var float
     *
     * @ORM\Column(name="CoolCharacteristicGradient", type="float", precision=10, scale=0, nullable=false)
     */
    private $coolcharacteristicgradient;

    /**
     * @var float
     *
     * @ORM\Column(name="ADC_CorrFct", type="float", precision=10, scale=0, nullable=false)
     */
    private $adcCorrfct;

    /**
     * @var float
     *
     * @ORM\Column(name="CoolCharacteristicLimit", type="float", precision=10, scale=0, nullable=false)
     */
    private $coolcharacteristiclimit;

    /**
     * @var integer
     *
     * @ORM\Column(name="ServiceStatus", type="integer", nullable=false)
     */
    private $servicestatus;

    /**
     * @var float
     *
     * @ORM\Column(name="FailureEvaporationPress", type="float", precision=10, scale=0, nullable=false)
     */
    private $failureevaporationpress;

    /**
     * @var integer
     *
     * @ORM\Column(name="ADC_Enabled", type="integer", nullable=false)
     */
    private $adcEnabled;

    /**
     * @var integer
     *
     * @ORM\Column(name="ADC_Result", type="integer", nullable=false)
     */
    private $adcResult;



    /**
     * Set operatingmode
     *
     * @param integer $operatingmode
     *
     * @return WpData
     */
    public function setOperatingmode($operatingmode)
    {
        $this->operatingmode = $operatingmode;

        return $this;
    }

    /**
     * Get operatingmode
     *
     * @return integer
     */
    public function getOperatingmode()
    {
        return $this->operatingmode;
    }

    /**
     * Set adcErrorenabled
     *
     * @param integer $adcErrorenabled
     *
     * @return WpData
     */
    public function setAdcErrorenabled($adcErrorenabled)
    {
        $this->adcErrorenabled = $adcErrorenabled;

        return $this;
    }

    /**
     * Get adcErrorenabled
     *
     * @return integer
     */
    public function getAdcErrorenabled()
    {
        return $this->adcErrorenabled;
    }

    /**
     * Set domesticwatertnominal
     *
     * @param float $domesticwatertnominal
     *
     * @return WpData
     */
    public function setDomesticwatertnominal($domesticwatertnominal)
    {
        $this->domesticwatertnominal = $domesticwatertnominal;

        return $this;
    }

    /**
     * Get domesticwatertnominal
     *
     * @return float
     */
    public function getDomesticwatertnominal()
    {
        return $this->domesticwatertnominal;
    }

    /**
     * Set laststartdate
     *
     * @param \DateTime $laststartdate
     *
     * @return WpData
     */
    public function setLaststartdate($laststartdate)
    {
        $this->laststartdate = $laststartdate;

        return $this;
    }

    /**
     * Get laststartdate
     *
     * @return \DateTime
     */
    public function getLaststartdate()
    {
        return $this->laststartdate;
    }

    /**
     * Set failurecondensationpress
     *
     * @param float $failurecondensationpress
     *
     * @return WpData
     */
    public function setFailurecondensationpress($failurecondensationpress)
    {
        $this->failurecondensationpress = $failurecondensationpress;

        return $this;
    }

    /**
     * Get failurecondensationpress
     *
     * @return float
     */
    public function getFailurecondensationpress()
    {
        return $this->failurecondensationpress;
    }

    /**
     * Set laststarttime
     *
     * @param \DateTime $laststarttime
     *
     * @return WpData
     */
    public function setLaststarttime($laststarttime)
    {
        $this->laststarttime = $laststarttime;

        return $this;
    }

    /**
     * Get laststarttime
     *
     * @return \DateTime
     */
    public function getLaststarttime()
    {
        return $this->laststarttime;
    }

    /**
     * Set coolcharacteristicsetpointbasetemp
     *
     * @param float $coolcharacteristicsetpointbasetemp
     *
     * @return WpData
     */
    public function setCoolcharacteristicsetpointbasetemp($coolcharacteristicsetpointbasetemp)
    {
        $this->coolcharacteristicsetpointbasetemp = $coolcharacteristicsetpointbasetemp;

        return $this;
    }

    /**
     * Get coolcharacteristicsetpointbasetemp
     *
     * @return float
     */
    public function getCoolcharacteristicsetpointbasetemp()
    {
        return $this->coolcharacteristicsetpointbasetemp;
    }

    /**
     * Set debugch1
     *
     * @param integer $debugch1
     *
     * @return WpData
     */
    public function setDebugch1($debugch1)
    {
        $this->debugch1 = $debugch1;

        return $this;
    }

    /**
     * Get debugch1
     *
     * @return integer
     */
    public function getDebugch1()
    {
        return $this->debugch1;
    }

    /**
     * Set suctiongastemp
     *
     * @param float $suctiongastemp
     *
     * @return WpData
     */
    public function setSuctiongastemp($suctiongastemp)
    {
        $this->suctiongastemp = $suctiongastemp;

        return $this;
    }

    /**
     * Get suctiongastemp
     *
     * @return float
     */
    public function getSuctiongastemp()
    {
        return $this->suctiongastemp;
    }

    /**
     * Set adcErrorhilo
     *
     * @param integer $adcErrorhilo
     *
     * @return WpData
     */
    public function setAdcErrorhilo($adcErrorhilo)
    {
        $this->adcErrorhilo = $adcErrorhilo;

        return $this;
    }

    /**
     * Get adcErrorhilo
     *
     * @return integer
     */
    public function getAdcErrorhilo()
    {
        return $this->adcErrorhilo;
    }

    /**
     * Set selectedadc
     *
     * @param integer $selectedadc
     *
     * @return WpData
     */
    public function setSelectedadc($selectedadc)
    {
        $this->selectedadc = $selectedadc;

        return $this;
    }

    /**
     * Get selectedadc
     *
     * @return integer
     */
    public function getSelectedadc()
    {
        return $this->selectedadc;
    }

    /**
     * Set modemstatus
     *
     * @param integer $modemstatus
     *
     * @return WpData
     */
    public function setModemstatus($modemstatus)
    {
        $this->modemstatus = $modemstatus;

        return $this;
    }

    /**
     * Get modemstatus
     *
     * @return integer
     */
    public function getModemstatus()
    {
        return $this->modemstatus;
    }

    /**
     * Set coolcharacteristicgradient
     *
     * @param float $coolcharacteristicgradient
     *
     * @return WpData
     */
    public function setCoolcharacteristicgradient($coolcharacteristicgradient)
    {
        $this->coolcharacteristicgradient = $coolcharacteristicgradient;

        return $this;
    }

    /**
     * Get coolcharacteristicgradient
     *
     * @return float
     */
    public function getCoolcharacteristicgradient()
    {
        return $this->coolcharacteristicgradient;
    }

    /**
     * Set adcCorrfct
     *
     * @param float $adcCorrfct
     *
     * @return WpData
     */
    public function setAdcCorrfct($adcCorrfct)
    {
        $this->adcCorrfct = $adcCorrfct;

        return $this;
    }

    /**
     * Get adcCorrfct
     *
     * @return float
     */
    public function getAdcCorrfct()
    {
        return $this->adcCorrfct;
    }

    /**
     * Set coolcharacteristiclimit
     *
     * @param float $coolcharacteristiclimit
     *
     * @return WpData
     */
    public function setCoolcharacteristiclimit($coolcharacteristiclimit)
    {
        $this->coolcharacteristiclimit = $coolcharacteristiclimit;

        return $this;
    }

    /**
     * Get coolcharacteristiclimit
     *
     * @return float
     */
    public function getCoolcharacteristiclimit()
    {
        return $this->coolcharacteristiclimit;
    }

    /**
     * Set servicestatus
     *
     * @param integer $servicestatus
     *
     * @return WpData
     */
    public function setServicestatus($servicestatus)
    {
        $this->servicestatus = $servicestatus;

        return $this;
    }

    /**
     * Get servicestatus
     *
     * @return integer
     */
    public function getServicestatus()
    {
        return $this->servicestatus;
    }

    /**
     * Set failureevaporationpress
     *
     * @param float $failureevaporationpress
     *
     * @return WpData
     */
    public function setFailureevaporationpress($failureevaporationpress)
    {
        $this->failureevaporationpress = $failureevaporationpress;

        return $this;
    }

    /**
     * Get failureevaporationpress
     *
     * @return float
     */
    public function getFailureevaporationpress()
    {
        return $this->failureevaporationpress;
    }

    /**
     * Set adcEnabled
     *
     * @param integer $adcEnabled
     *
     * @return WpData
     */
    public function setAdcEnabled($adcEnabled)
    {
        $this->adcEnabled = $adcEnabled;

        return $this;
    }

    /**
     * Get adcEnabled
     *
     * @return integer
     */
    public function getAdcEnabled()
    {
        return $this->adcEnabled;
    }

    /**
     * Set adcResult
     *
     * @param integer $adcResult
     *
     * @return WpData
     */
    public function setAdcResult($adcResult)
    {
        $this->adcResult = $adcResult;

        return $this;
    }

    /**
     * Get adcResult
     *
     * @return integer
     */
    public function getAdcResult()
    {
        return $this->adcResult;
    }
}
