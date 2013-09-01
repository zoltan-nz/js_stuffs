<?
sleep(1);

$json_content = [
    ["name" => "JFK - New York, NY",
    "status" => "Departing Location"],
    ["name" => "DEN - Denver, CO",
    "status" => "Connection Flight"],
    ["name" => "SFO - San Franciso, CA",
    "status" => "Destination"],
    ];

header('Content-Type: application/json');
echo json_encode($json_content);
