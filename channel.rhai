let toolchain = variable::get("toolchain");
let channel = toolchain;

if toolchain == "nightly" {
	let today = system::date();
	channel += "-";
	channel += today.year;
	channel += "-";
	let month = today.month.to_string();
	if month.len() == 1 {
		month = "0" + month;
	}
	channel += month;
	channel += "-";
	let day = today.day.to_string();
	if day.len() == 1 {
		day = "0" + day;
	}
	channel += day;
}

variable::set("channel", channel);
