for i in `ls *.dat`; do
	table=${i/.dat/}
	echo "Loading $table..."
	psql $1 -q -c "TRUNCATE $table"
	psql $1 -c "\\copy $table FROM '$i' CSV DELIMITER '|'"
done
