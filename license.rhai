let licenses = [
    "MIT",
    "APACHE",
	"GPL",
];

let license = "";
while !(license in licenses) {
	license = variable::prompt("license", licenses[0], licenses);
}

file::rename("LICENSE-" + license, "LICENSE");
for other in licenses {
	if other == license { continue; }
	file::delete("LICENSE-" + other);
}

variable::set("license", license)
