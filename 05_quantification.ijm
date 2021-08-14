/*
To make this script run in Fiji, please activate the clij, clij2, 
clijx-assistant,  clijx-assistant-extensions and IJMMD update 
sites in your Fiji installation. Read more: https://clij.github.io

Generator version: 2.5.0.1
*/

directory = "C:/structure/code/grenoble/"

function show(name, vmin, vmax) {
	Ext.CLIJ2_maximumZProjection(name, projection);
	Ext.CLIJ2_pull(projection);
	Ext.CLIJ2_release(projection);
	
	setMinAndMax(vmin, vmax);
	run("Red Hot");
	run("Calibration Bar...", "location=[Lower Right] fill=White label=Black number=5 decimal=1 font=15 zoom=1");
	//run("Flatten");
	temp = split(name, "_");
	filename = temp[0] + "_" + temp[1];
	saveAs("tif", directory + filename + ".tif");
	close(projection);
}

function visualize_map(name) {
	Ext.CLIJ2_maximumZProjection(name, projection);
	Ext.CLIJ2_pull(projection);
	Ext.CLIJ2_release(projection);
	
	resetMinAndMax();
	run("Red Hot");
	run("Calibration Bar...", "location=[Lower Right] fill=White label=Black number=5 decimal=1 font=15 zoom=1");
	//run("Flatten");
	temp = split(name, "_");
	filename = temp[0] + "_" + temp[1];
	saveAs("tif", directory + filename + ".tif");
	close(projection);
}

run("Close All");

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// Load image from disc 
open(directory + "lund_labels.tif");
labels = getTitle();
Ext.CLIJ2_pushCurrentZStack(labels);

/*
## Ellipsoid Major Axis Length Map
*/
Ext.CLIJx_morphoLibJEllipsoidMajorAxisLengthMap(labels, image_6);

visualize_map(image_6);

/*
## Ellipsoid Minor Axis Length Map
*/
Ext.CLIJx_morphoLibJEllipsoidMinorAxisLengthMap(labels, image_8);
visualize_map(image_8);

/*
## Euler Number3D Map
*/
Ext.CLIJx_morphoLibJEulerNumber3DMap(labels, image_9);
visualize_map(image_9);

/*
## Extension Ratio Map
*/
Ext.CLIJ2_extensionRatioMap(labels, image_10);
show(image_10, 0, 2.9);

/*
## Inscribed Ball Radius Map
*/
Ext.CLIJx_morphoLibJInscribedBallRadiusMap(labels, image_11);
visualize_map(image_11);

/*
## Mean Breadth Map
*/
Ext.CLIJx_morphoLibJMeanBreadthMap(labels, image_12);
visualize_map(image_12);

/*
## Pixel Count Map
*/
Ext.CLIJ2_pixelCountMap(labels, image_13);
visualize_map(image_13);

/*
## Sphericity Map
*/
Ext.CLIJx_morphoLibJSphericityMap(labels, image_14);
visualize_map(image_14);

/*
## Surface Area Map
*/
Ext.CLIJx_morphoLibJSurfaceAreaMap(labels, image_15);
visualize_map(image_15);

// cleanup
Ext.CLIJ2_clear();