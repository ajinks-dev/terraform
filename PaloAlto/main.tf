terrafom{
    required_providers {
        panos = {
            source = "PaloAltoNetworks/panos"
            version = "2.0.0"
        }
    }
}

resource "panos_general_settings" "main" {
    hostname = "mainfirewall"
    domian = "example.com"

    lifecycle {
        create_before_destroy = true
    }
}

provider "panos" {
    hostname = "192.168.122.182"
    username = "admin"
    password = "London@1"
} 