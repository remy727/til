# wkhtmltopdf
### CSS
```
<style>
/* Fix wkhtmltopdf compatibility with BS flex features */
.row {
	display: -webkit-box;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
}
.row > div {
	-webkit-box-flex: 1;
	-webkit-flex: 1;
	flex: 1;
}
.row > div:last-child {
	margin-right: 0;
}
/* Fix wkhtmltopdf compatibility with BS tables borders */
/* Requires cellspacing="0" on table to prevent spacing */
table {
	border-collapse: separate !important;
}
th, td {
	border-top: none;
	border-left: none;
	border-right: none;
}
</style>
```
