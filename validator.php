<?php
        // Validate XML output
	$FILE_QML_CACHE="monitor.xml";
        echo "Validating $FILE_QML_CACHE";
        libxml_use_internal_errors(true);
        $xml = new DOMDocument();
        $xml->load("$FILE_QML_CACHE");
        if ( !$xml->schemaValidate('./1.2/QuakeML-1.2.xsd') ) {

                $errors = libxml_get_errors();
                foreach ($errors as $error) {
                        $validation_error = " XML error:\n  MESSAGE=$error->message  LEVEL=[$error->level]\n  CODE=$error->code\n  FILE=$error->file\n  LINE=$error->line \n\n";
                }
                echo " QuakeML is not valid: \n$validation_error";
                libxml_clear_errors();
        }
        else {
                echo " QuakeML is valid.";
        }
        libxml_use_internal_errors(false);
?>
