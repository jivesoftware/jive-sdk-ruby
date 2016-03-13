var tileConfig = {};

function save() {
	tileConfig["data"] = ((typeof(tileConfig.data) != "object")? {} : {});
	tileConfig["data"]["configString"] = "This is an awesome config string";
	console.log("jive.tile.close: ", tileConfig);
	jive.tile.close(tileConfig, {});	
}

jive.tile.onOpen(function(config, options) {
	console.log("jive.tile.onOpen: ", config, options);
	tileConfig = config;

	gadgets.window.adjustHeight();
	$(document).ready(function() {
		osapi.jive.corev3.people.getViewer().execute(function(response) {
			console.log(response);
			if (response.error) {

			}
			else {
				$(".current-user").html(response.displayName);
			}
		});
	});
});

