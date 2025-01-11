let licenses = [
    "MIT",
    "APACHE",
	"GPL",
	"none"
];

let license = variable::prompt("license", licenses[0], licenses);

if license != "none" {
	file::rename("LICENSE-" + license, "LICENSE");
}
for other in licenses {
	if other == license { continue; }
	file::delete("LICENSE-" + other);
}

variable::set("license", license)
