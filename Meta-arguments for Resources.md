count
    create multiple instances according to the value assigned to the count
for_each
    create multiple resource instances as per a set of strings
depends_on
    specify explicit dependency
lifecycle
    Define life cycle of a resource
provide 
    select a non-default provider configuration

# count 
resource "google_compute_instance" "Dev_VM" {
    count = 3
    name = "dev_VM${count.index + !}"
    #other required arguments
    ...
}

# fore_each


resource "google_compute_instance" "Dev_VM" {
    for-EACH = toset (["us-central-1" , "asia-east1-b" , "europe-west4-a"])
    name = "dev_VM${each.value}"
    zone = each.value
    #other required arguments
    ...
}