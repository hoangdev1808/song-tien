import {
	src,
	dest
} from "gulp";
import {
	readFileSync
} from "graceful-fs";

const copyAssets = () => {
	return src("src/assets/**/**.{svg,png,jpg,jpeg,gif,mp4}")
		.pipe(dest("_dist/assets"))
};

const copyFonts = () => {
	let vendors = JSON.parse(readFileSync("_vendors.json"));
	let fonts = vendors.fonts;
	return src(fonts, {
			allowEmpty: true
		})
		.pipe(dest("_dist/fonts"));

};

const coppyWebfonts = () =>{
	return src('node_modules/@fortawesome/fontawesome-free/webfonts/**.**')
	.pipe(dest('_dist/webfonts'))
}

module.exports = {
	copyAssets,
	copyFonts,
	coppyWebfonts,
};