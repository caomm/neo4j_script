<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!-- START SIGMA IMPORTS 
<script resources="resources/sigma.core.js"></script>
<!-- START SIGMA IMPORTS -->
<script src="resources/sigma.core.js"></script>
<script src="resources/conrad.js"></script>
<script src="resources/utils/sigma.utils.js"></script>
<script src="resources/utils/sigma.polyfills.js"></script>
<script src="resources/sigma.settings.js"></script>
<script src="resources/classes/sigma.classes.dispatcher.js"></script>
<script src="resources/classes/sigma.classes.configurable.js"></script>
<script src="resources/classes/sigma.classes.graph.js"></script>
<script src="resources/classes/sigma.classes.camera.js"></script>
<script src="resources/classes/sigma.classes.quad.js"></script>
<script src="resources/classes/sigma.classes.edgequad.js"></script>
<script src="resources/captors/sigma.captors.mouse.js"></script>
<script src="resources/captors/sigma.captors.touch.js"></script>
<script src="resources/renderers/sigma.renderers.canvas.js"></script>
<script src="resources/renderers/sigma.renderers.webgl.js"></script>
<script src="resources/renderers/sigma.renderers.svg.js"></script>
<script src="resources/renderers/sigma.renderers.def.js"></script>
<script src="resources/renderers/webgl/sigma.webgl.nodes.def.js"></script>
<script src="resources/renderers/webgl/sigma.webgl.nodes.fast.js"></script>
<script src="resources/renderers/webgl/sigma.webgl.edges.def.js"></script>
<script src="resources/renderers/webgl/sigma.webgl.edges.fast.js"></script>
<script src="resources/renderers/webgl/sigma.webgl.edges.arrow.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.labels.def.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.hovers.def.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.nodes.def.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edges.def.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edges.curve.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edges.arrow.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edges.curvedArrow.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edgehovers.def.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edgehovers.curve.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edgehovers.arrow.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.edgehovers.curvedArrow.js"></script>
<script src="resources/renderers/canvas/sigma.canvas.extremities.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.utils.js"></script>
<script src="resources/renderers/svg/sigma.svg.nodes.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.edges.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.edges.curve.js"></script>
<script src="resources/renderers/svg/sigma.svg.labels.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.hovers.def.js"></script>
<script src="resources/middlewares/sigma.middlewares.rescale.js"></script>
<script src="resources/middlewares/sigma.middlewares.copy.js"></script>
<script src="resources/misc/sigma.misc.animation.js"></script>
<script src="resources/misc/sigma.misc.bindEvents.js"></script>
<script src="resources/misc/sigma.misc.bindDOMEvents.js"></script>
<script src="resources/misc/sigma.misc.drawHovers.js"></script>
<!-- END SIGMA IMPORTS -->
<script src="resources/plugins/sigma.parsers.json/sigma.parsers.json.js"></script>
<script src="resources/plugins/sigma.parsers.cypher/sigma.parsers.cypher.js"></script>
<script src="resources/plugins/sigma.plugins.activeState/sigma.plugins.activeState.js"></script>
<script src="resources/plugins/sigma.plugins.dragNodes/settings.js"></script>
<script src="resources/plugins/sigma.plugins.dragNodes/sigma.plugins.dragNodes.js"></script>
<script src="resources/plugins/sigma.plugins.animate/sigma.plugins.animate.js"></script>
<script src="resources/misc/sigma.misc.animation.js"></script>
<script src="resources/classes/sigma.classes.dispatcher.js"></script>
<script src="resources/classes/sigma.classes.configurable.js"></script>
<script src="resources/classes/sigma.classes.graph.js"></script>
<script src="resources/classes/sigma.classes.camera.js"></script>
<script src="resources/classes/sigma.classes.quad.js"></script>
<script src="resources/classes/sigma.classes.edgequad.js"></script>
<script src="resources/plugins/sigma.plugins.select/sigma.plugins.select.js"></script>
<script src="resources/plugins/sigma.plugins.keyboard/sigma.plugins.keyboard.js"></script>
<script src="resources/plugins/sigma.plugins.activeState/sigma.plugins.activeState.js"></script>
<script src="resources/renderers/svg/sigma.svg.utils.js"></script>
<script src="resources/renderers/svg/sigma.svg.nodes.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.edges.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.edges.curve.js"></script>
<script src="resources/renderers/svg/sigma.svg.labels.def.js"></script>
<script src="resources/renderers/svg/sigma.svg.hovers.def.js"></script>
<script src="resources/middlewares/sigma.middlewares.rescale.js"></script>
<script src="resources/middlewares/sigma.middlewares.copy.js"></script>
<script src="resources/misc/sigma.misc.animation.js"></script>
<script src="resources/misc/sigma.misc.bindEvents.js"></script>
<script src="resources/misc/sigma.misc.bindDOMEvents.js"></script>
<script src="resources/misc/sigma.misc.drawHovers.js"></script>
<script src="resources/plugins/sigma.renderers.edgeLabels/settings.js"></script>
<script src="resources/plugins/sigma.renderers.edgeLabels/sigma.canvas.edges.labels.def.js"></script>
<script src="resources/plugins/sigma.renderers.edgeLabels/sigma.canvas.edges.labels.curve.js"></script>
<script src="resources/plugins/sigma.renderers.edgeLabels/sigma.canvas.edges.labels.curvedArrow.js"></script>
<script src="resources/plugins/sigma.exporters.svg/sigma.exporters.svg.js"></script>

<div id="container">
	<style>
#graph-container {
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	position: absolute;
}

.sigma-tooltip {
	max-width: 240px;
	max-height: 280px;
	background-color: #F0F0F0;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	border-radius: 6px;
}

.sigma-tooltip-header {
	font-variant: small-caps;
	font-size: 130%;
	font-weight: bold;
	color: #003366;
	background-color: #D8D8D8;
	border-bottom: 1px solid #181818;
	padding: 10px;
}

.sigma-tooltip-body {
	padding: 10px;
}

.sigma-tooltip-body th {
	color: #303030;
	text-align: left;
}

.sigma-tooltip-footer {
	padding: 10px;
	border-top: 1px solid #181818;
}

.sigma-tooltip>.arrow {
	border-width: 10px;
	position: absolute;
	display: block;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
}

.sigma-tooltip.top {
	margin-top: -12px;
	color: #585858;
}

.sigma-tooltip.top>.arrow {
	left: 50%;
	bottom: -10px;
	margin-left: -10px;
	border-top-color: rgb(249, 247, 237);
	border-bottom-width: 0;
}

.sigma-tooltip.bottom {
	margin-top: 12px;
}

.sigma-tooltip.bottom>.arrow {
	left: 50%;
	top: -10px;
	margin-left: -10px;
	border-bottom-color: rgb(249, 247, 237);
	border-top-width: 0;
}

.sigma-tooltip.left {
	margin-left: -12px;
}

.sigma-tooltip.left>.arrow {
	top: 50%;
	right: -10px;
	margin-top: -10px;
	border-left-color: rgb(249, 247, 237);
	border-right-width: 0;
}

.sigma-tooltip.right {
	margin-left: 12px;
}

.sigma-tooltip.right>.arrow {
	top: 50%;
	left: -10px;
	margin-top: -10px;
	border-right-color: rgb(249, 247, 237);
	border-left-width: 0;
}

#control-pane {
	top: 10px;
	right: 10px;
	position: absolute;
	width: 230px;
	background-color: #F0F0F0;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

#control-pane>div {
	margin: 10px;
	overflow-x: auto;
}

.line {
	clear: both;
	display: block;
	width: 100%;
	margin: 0;
	padding: 12px 0 0 0;
	border-bottom: 1px solid #000000;
	background: transparent;
}

h2, h3, h4 {
	padding: 0;
	font-variant: small-caps;
}

.green {
	color: #437356;
}

h2.underline {
	color: #003366;
	background: #D8D8D8;
	margin: 0;
	border-radius: 2px;
	padding: 8px 12px;
	font-weight: 700;
	border-bottom: 1px solid #181818;
}

.hidden {
	display: none;
	visibility: hidden;
}

input[type=range] {
	width: 160px;
}
</style>
	<div id="graph-container"></div>
</div>

<script src="resources/plugins/sigma.layout.forceAtlas2/worker.js"></script>
<script src="resources/plugins/sigma.layout.forceAtlas2/supervisor.js"></script>
<script src="resources/plugins/sigma.layout.forceLink/supervisor.js"></script>
<script src="resources/plugins/sigma.layout.forceLink/worker.js"></script>
<script src="resources/plugins/sigma.plugins.animate/sigma.plugins.animate.js"></script>
<script src="resources/plugins/sigma.plugins.filter/sigma.plugins.filter.js"></script>
<script src="resources/plugins/sigma.plugins.tooltips/sigma.plugins.tooltips.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>

<script>
	var initSigma = new sigma({
		renderer : {
			container : document.getElementById('graph-container'),
			type : 'canvas'
		},
		settings : {
			labelThreshold : 20,
			defaultLabelSize : 13,
			labelSize : 'fixed',
			drawEdgeLabels : true,
			minNodeSize : 1.0,
			maxNodeSize : 25.0,
			maxEdgeSize : 2.1,
			labelAlignment : 'center',
			dragNodeStickiness : 0.01,
			minArrowSize : 15,
			drawEdges : true,
			enableHovering : true,
			sideMargin : 2,
			scalingMode : 'outside',
			animationsTime : 1000,
			enableHovering : true,
			defaultEdgeLabelSize : 12,
			edgeLabelSize : 'fixed',
			edgeLabelThreshold : 2.0,
		}
	});

	function customiseGraph(s) {
		s.graph.nodes().forEach(function(n) {
			if (n.neo4j_labels[0] == 'Person') {
				n.color = '#4acfc8';
			}
			if (n.neo4j_labels[0] == 'Movie') {
				n.color = '#FF6C7C';
			}
			if (n.neo4j_labels[0] == 'Statni') {
				n.color = '#FFA500';
			}
			if (n.neo4j_labels[0] == 'Univerzita') {
				n.color = '#4356C0';
			}
			if (n.neo4j_labels[0] == 'Projekt') {
				n.color = '#F25A29';
			}
			if (n.neo4j_labels[0] == 'zdravotnicke_zarizeni') {
				n.color = '#DA70D6';
			}
			if (n.neo4j_labels[0] == 'Konference') {
				n.color = '#DFE1E3';
			}
			n.label = n.neo4j_data.title;
			n.size = 16.0;
			n.fixed = false;
		});

		s.graph.edges().forEach(function(n) {
			n.color = '#989898';
			n.size = 2.1;
		});

		var config = {
			node : {
				show : 'overNode',
				hide : 'outNode',
				cssClass : 'sigma-tooltip',
				position : 'top',
				template : '<div class="arrow"></div>'
						+ ' <div class="sigma-tooltip-header">{{label}}</div>'
						+ '  <div class="sigma-tooltip-body">'
						+ '    <table>'
						+ '      <tr><th>title</th> <td>{{neo4j_labels}}</td></tr>'
						+ '      <tr><th>released</th> <td>{{neo4j_data.released}}</td></tr>'
						+ '      <tr><th>tagline</th> <td>{{neo4j_data.tagline}}</td></tr>'						
						+ '    </table>'
						+ '  </div>'
						+ '  <div class="sigma-tooltip-footer">Pocet spojen? {{degree}}</div>',
				renderer : function(node, template) {
					node.degree = this.degree(node.id);
					return Mustache.render(template, node);
				}
			}
		};

		var tooltips = sigma.plugins.tooltips(initSigma,
				initSigma.renderers[0], config);
		var fa = sigma.layouts.configForceLink(initSigma, {
			linLogMode : false,
			adjustSizes : true,
			worker : true,
			autoStop : true,
			background : true,
			scaleRatio : 3,
			gravity : 2,
			easing : 'cubicInOut',
			nodeSiblingsScale : 5,
			barnesHutOptimize : true,
		});
		sigma.layouts.startForceLink();
		var cam = initSigma.camera;
		sigma.misc.animation.camera(cam, {
			ratio : 1.9
		});
		initSigma.refresh();
	}

	sigma.neo4j.cypher({
		url : 'http://localhost:7474',
		user : 'neo4j',
		password : '123456'
	}, 'MATCH (n:Person) RETURN n LIMIT 25',
			initSigma, customiseGraph);

	var activeState = sigma.plugins.activeState(initSigma);
	var dragListener = sigma.plugins.dragNodes(initSigma,
			initSigma.renderers[0], activeState);
	var select = sigma.plugins.select(initSigma, activeState);
	var keyboard = sigma.plugins.keyboard(initSigma, initSigma.renderers[0]);
	select.bindKeyboard(keyboard);
</script>