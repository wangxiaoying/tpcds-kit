#
#  Legal Notice
#
#  This document and associated source code (the "Work") is a part of a
#  benchmark specification maintained by the TPC.
# 
#  The TPC reserves all right, title, and interest to the Work as provided
#  under U.S. and international laws, including without limitation all patent
#  and trademark rights therein.
# 
#  No Warranty
# 
#  1.1 TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE INFORMATION
#      CONTAINED HEREIN IS PROVIDED "AS IS" AND WITH ALL FAULTS, AND THE
#      AUTHORS AND DEVELOPERS OF THE WORK HEREBY DISCLAIM ALL OTHER
#      WARRANTIES AND CONDITIONS, EITHER EXPRESS, IMPLIED OR STATUTORY,
#      INCLUDING, BUT NOT LIMITED TO, ANY (IF ANY) IMPLIED WARRANTIES,
#      DUTIES OR CONDITIONS OF MERCHANTABILITY, OF FITNESS FOR A PARTICULAR
#      PURPOSE, OF ACCURACY OR COMPLETENESS OF RESPONSES, OF RESULTS, OF
#      WORKMANLIKE EFFORT, OF LACK OF VIRUSES, AND OF LACK OF NEGLIGENCE.
#      ALSO, THERE IS NO WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT,
#      QUIET POSSESSION, CORRESPONDENCE TO DESCRIPTION OR NON-INFRINGEMENT
#      WITH REGARD TO THE WORK.
#  1.2 IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THE WORK BE LIABLE TO
#      ANY OTHER PARTY FOR ANY DAMAGES, INCLUDING BUT NOT LIMITED TO THE
#      COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST PROFITS, LOSS
#      OF USE, LOSS OF DATA, OR ANY INCIDENTAL, CONSEQUENTIAL, DIRECT,
#      INDIRECT, OR SPECIAL DAMAGES WHETHER UNDER CONTRACT, TORT, WARRANTY,
#      OR OTHERWISE, ARISING IN ANY WAY OUT OF THIS OR ANY OTHER AGREEMENT
#      RELATING TO THE WORK, WHETHER OR NOT SUCH AUTHOR OR DEVELOPER HAD
#      ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.
# 
#  Contributors:
#  Gradient Systems
# 
#
#
################
## TARGET OS HERE
################
# OS Values: AIX, LINUX, SOLARIS, NCR, HPUX, MACOS
OS = LINUX
###########
# No changes should be necessary below this point
# Each compile variable is adjusted for the target platform using the OS setting above
###########
# CC
AIX_CC		= xlC
HPUX_CC		= gcc
LINUX_CC	= gcc
NCR_CC		= cc
MACOS_CC		= gcc
SOLARIS_CC	= gcc
SOL86_CC	= cc
CC		= $($(OS)_CC)
# CFLAGS
AIX_CFLAGS		= -q64 -O3 -D_LARGE_FILES
HPUX_CFLAGS		= -O3 -Wall
LINUX_CFLAGS	= -g -Wall
NCR_CFLAGS		= -g 
MACOS_CFLAGS		= -g -Wall
SOLARIS_CFLAGS	= -O3 -Wall
SOL86_CFLAGS	= -O3 
BASE_CFLAGS    	= -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DYYDEBUG #-maix64 -DMEM_TEST 
CFLAGS			= $(BASE_CFLAGS) -D$(OS) $($(OS)_CFLAGS) -fcommon
# EXE
AIX_EXE		= 
HPUX_EXE	= 
LINUX_EXE	= 
NCR_EXE		= 
MACOS_EXE		= 
SOLARIS_EXE	= 
SOL86_EXE	= 
EXE			= $($(OS)_EXE)
# LEX
AIX_LEX		= flex
HPUX_LEX	= flex
LINUX_LEX	= lex
NCR_LEX		= lex
MACOS_LEX		= lex
SOLARIS_LEX	= lex
SOL86_LEX	= lex
LEX			= $($(OS)_LEX)
# LIBS
AIX_LIBS	= -lm
HPUX_LIBS	= -lm -ll
LINUX_LIBS	= -lm
NCR_LIBS	= -lm -lc89
MACOS_LIBS	= -lm
SOLARIS_LIBS	= -ly -ll -lm
SOL86_LIBS	= -ly -ll -lm
LIBS		= $($(OS)_LIBS)
# YACC
AIX_YACC	= yacc
HPUX_YACC	= bison -y
LINUX_YACC	= yacc
NCR_YACC	= yacc
MACOS_YACC	= yacc
SOLARIS_YACC	= yacc
SOL86_YACC	= yacc
YACC		= $($(OS)_YACC)
# YFLAGS
AIX_YFLAGS	= -d -v
HPUX_YFLAGS	= -y -d -v
LINUX_YFLAGS	= -d -v
NCR_YFLAGS	= -d -v
MACOS_YFLAGS	= -d -v
SOLARIS_YFLAGS	= -d -v
SOL86_YFLAGS	= -d -v
YFLAGS		= $($(OS)_YFLAGS)
###############
TREE_ROOT=/tmp/tree
#
PROG1 = dsdgen$(EXE)
PROG2 = dsqgen$(EXE)
PROG3 = distcomp$(EXE)
PROG4 = mkheader$(EXE)
PROG5 = checksum$(EXE)
PROGS = $(PROG1) $(PROG2) $(PROG3) $(PROG4) $(PROG5)
#
COMMON_HDR = address.h build_support.h config.h constants.h date.h \
	dcgram.h dcomp.h dcomp_params.h decimal.h dist.h driver.h \
	error_msg.h expr.h genrand.h grammar.h grammar_support.h \
	list.h load.h misc.h nulls.h parallel.h params.h \
	permute.h porting.h pricing.h print.h qgen_params.h query_handler.h \
	release.h r_params.h StringBuffer.h tdef_functions.h \
	tdefs.h template.h scd.h mathops.h scd.h sparse.h validate.h
DISTCOMP_HDR = dcgram.h dcomp.h dcomp_params.h grammar.h nulls.h 
QGEN_HDR = eval.h substitution.h  keywords.h permute.h qgen_params.h 
S_HDR = s_brand.h s_customer_address.h scaling.h s_call_center.h s_catalog.h \
	s_catalog_order.h s_catalog_order_lineitem.h s_catalog_page.h \
	s_catalog_promotional_item.h s_catalog_returns.h s_category.h \
	s_class.h s_company.h s_customer.h s_division.h s_inventory.h \
	s_item.h s_manager.h s_manufacturer.h s_market.h s_pline.h s_product.h \
	s_promotion.h s_purchase.h s_reason.h s_store.h \
	s_store_promotional_item.h s_store_returns.h s_subcategory.h \
	s_subclass.h s_warehouse.h s_web_order.h \
	s_web_order_lineitem.h s_web_page.h s_web_promotional_item.h \
	s_web_returns.h s_web_site.h s_tdefs.h s_zip_to_gmt.h
W_HDR = w_call_center.h w_catalog_page.h w_catalog_returns.h \
	w_catalog_sales.h w_customer_address.h w_customer_demographics.h \
	w_customer.h w_datetbl.h w_household_demographics.h w_income_band.h \
	w_inventory.h w_item.h \
	w_promotion.h w_reason.h w_ship_mode.h \
	w_store.h w_store_returns.h w_store_sales.h w_tdefs.h w_timetbl.h \
	w_warehouse.h w_web_page.h w_web_returns.h w_web_sales.h w_web_site.h \
	dbgen_version.h
HDR = $(COMMON_HDR) $(DISTCOMP_HDR) $(QGEN_HDR) $(S_HDR) $(W_HDR)
#
COMMON_SRC = address.c build_support.c date.c \
	decimal.c dist.c driver.c error_msg.c expr.c genrand.c \
	grammar_support.c join.c list.c load.c misc.c \
	nulls.c parallel.c permute.c pricing.c print.c r_params.c StringBuffer.c \
	tdef_functions.c tdefs.c text.c scd.c scaling.c release.c scd.c sparse.c \
	porting.c validate.c
DISTCOMP_SRC = dcgram.c dcomp.c grammar.c 
QGEN_SRC = tokenizer.l substitution.c QgenMain.c qgen.y query_handler.c \
	eval.c keywords.c
S_SRC = s_brand.c s_customer_address.c scaling.c s_call_center.c s_catalog.c \
	s_catalog_order.c s_catalog_order_lineitem.c s_catalog_page.c \
	s_catalog_promotional_item.c s_catalog_returns.c s_category.c \
	s_class.c s_company.c s_customer.c s_division.c s_inventory.c s_item.c \
	s_manager.c s_manufacturer.c s_market.c s_pline.c s_product.c \
	s_promotion.c s_purchase.c s_reason.c s_store.c \
	s_store_promotional_item.c s_store_returns.c s_subcategory.c \
	s_subclass.c s_warehouse.c s_web_order.c s_web_order_lineitem.c \
	s_web_page.c s_web_promotinal_item.c s_web_returns.c s_web_site.c \
	s_zip_to_gmt.c
W_SRC = w_call_center.c w_catalog_page.c w_catalog_returns.c w_catalog_sales.c \
	w_customer_address.c w_customer.c w_customer_demographics.c  \
	w_datetbl.c w_household_demographics.c w_income_band.c w_inventory.c \
	w_item.c \
	w_promotion.c w_reason.c w_ship_mode.c w_store.c w_store_returns.c \
	w_store_sales.c w_timetbl.c w_warehouse.c w_web_page.c w_web_returns.c \
	w_web_sales.c w_web_site.c dbgen_version.c
SRC = $(COMMON_SRC) $(DISTCOMP_SRC) $(S_SRC) $(W_SRC) $(QGEN_SRC) mkheader.c checksum.c
#
DBGEN_OBJ = address.o build_support.o date.o \
	decimal.o dist.o driver.o error_msg.o genrand.o \
	join.o list.o load.o misc.o \
	nulls.o parallel.o permute.o pricing.o print.o r_params.o StringBuffer.o \
	tdef_functions.o tdefs.o text.o scd.o scaling.o release.o sparse.o validate.o
DISTCOMP_OBJ = dcgram.o dcomp.o grammar.o error_msg.o StringBuffer.o r_params.o 
QGEN_OBJ = address.o date.o decimal.o dist.o error_msg.o expr.o \
	eval.o genrand.o grammar_support.o keywords.o list.o \
	nulls.o permute.o print.o QgenMain.o query_handler.o r_params.o \
	scaling.o StringBuffer.o substitution.o tdefs.o text.o tokenizer.o w_inventory.o y.tab.o \
	release.o scd.o build_support.o parallel.o 
S_OBJ = s_brand.o s_customer_address.o s_call_center.o s_catalog.o \
	s_catalog_order.o s_catalog_order_lineitem.o s_catalog_page.o \
	s_catalog_promotional_item.o s_catalog_returns.o s_category.o \
	s_class.o s_company.o s_customer.o s_division.o s_inventory.o s_item.o \
	s_manager.o s_manufacturer.o s_market.o s_pline.o s_product.o \
	s_promotion.o s_purchase.o s_reason.o s_store.o \
	s_store_promotional_item.o s_store_returns.o s_subcategory.o \
	s_subclass.o s_warehouse.o s_web_order.o s_web_order_lineitem.o \
	s_web_page.o s_web_promotinal_item.o s_web_returns.o s_web_site.o \
	s_zip_to_gmt.o
W_OBJ = w_call_center.o w_catalog_page.o w_catalog_returns.o w_catalog_sales.o \
	w_customer_address.o w_customer.o w_customer_demographics.o  \
	w_datetbl.o w_household_demographics.o w_income_band.o w_inventory.o \
	w_item.o \
	w_promotion.o w_reason.o w_ship_mode.o w_store.o w_store_returns.o \
	w_store_sales.o w_timetbl.o w_warehouse.o w_web_page.o w_web_returns.o \
	w_web_sales.o w_web_site.o dbgen_version.o
#
OBJ1 =	$(S_OBJ) $(W_OBJ) $(DBGEN_OBJ)
OBJ2 =	$(QGEN_OBJ)
OBJ3 =	$(DISTCOMP_OBJ)
OBJ4 =	mkheader.o
OBJ5 =	checksum.o
OBJ = $(OBJ1) $(OBJ2) $(OBJ3) $(OBJ4) $(OBJ5)
#
IDX 	=	tpcds.idx 
IDXSRC =	calendar.dst cities.dst english.dst fips.dst names.dst \
			streets.dst tpcds.dst items.dst scaling.dst
#
DOC =	README HISTORY PORTING.NOTES QGEN.doc \
	ReleaseNotes.txt README_grammar.txt How_To_Guide.doc
DDL = 	tpcds.sql tpcds.wam source_schema.wam tpcds_source.sql
OTHER=	Makefile.suite column_list.txt parallel.sh specification.doc tpcds_ri.sql
WIN_MAKE=dbgen2.vcproj distcomp.vcproj qgen2.vcproj mkheader.vcproj \
	y.tab.c y.tab.h tokenizer.c grammar.vcproj dbgen2.sln Cygwin\ Tools.rules checksum.vcproj
#
FQD =		query_templates/*
VARIANTS =	query_variants/*
TESTS =		tests/*.sh tests/*.sql 
ANS = 		answer_sets/*.ans
QUERY_SRC = $(FQD) $(VARIANTS)
TREE_DOC =
JUNK	= tags *.idx columns.h streams.h tables.h y.tab.h y.tab.c tokenizer.c  \
	y.output .ctags_updated tpcds.idx.h
DBGENSRC	= $(SRC) $(HDR) $(OTHER) $(DOC) $(DDL) $(IDXSRC) $(WIN_MAKE) $(QUERY_SRC) $(TESTS) $(ANS)
GENERATED	= tables.h streams.h columns.h
DATE_STAMP	= `date '+%Y%m%d'`
#
all: .ctags_updated $(PROGS) $(IDX) 

$(PROG1): $(OBJ1) $(IDX)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG1) $(OBJ1) $(LIBS)
$(PROG2): $(OBJ2)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG2) $(OBJ2) $(LIBS)
$(PROG3): $(OBJ3)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG3) $(OBJ3) $(LIBS)
$(PROG4): $(OBJ4)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG4) $(OBJ4) $(LIBS)
$(PROG5): $(OBJ5)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG5) $(OBJ5) $(LIBS)
$(IDX): $(PROG3) $(IDXSRC)
	./$(PROG3) -i tpcds.dst -o $(IDX)

clean:
	-rm -f $(PROGS) $(OBJ) $(JUNK) $(IDX)
.ctags_updated: $(SRC)
	-ctags $(SRC) 2> /dev/null
	date > .ctags_updated
current_source:
	cvs update
depend: $(SRC) $(HDR)
	touch columns.h streams.h tables.h
	-makedepend -f Makefile.suite -Y -- $(CFLAGS) -- $(SRC) 2> /dev/null
	date > .depend_updated
	rm -f columns.h streams.h tables.h
lint:
	lint $(CFLAGS) -u -x -wO -p $(SRC1)
	lint $(CFLAGS) -u -x -wO -p $(SRC2)
release: current_source depend sum tar zip test_build
	rm -f tpcds_`date '+%Y%m%d'`.sum
	rm -rf test
tar: $(DBGENSRC)
	tar cvzf tpcds_`date '+%Y%m%d'`.tar.gz $(DBGENSRC) tpcds_`date '+%Y%m%d'`.sum
zip: $(DBGENSRC)
	zip tpcds_`date '+%Y%m%d'` $(DBGENSRC) tpcds_`date '+%Y%m%d'`.sum
data_set: /data/dbgen_version.dat
	touch data_set
/data/dbgen_version.dat: $(PROG1)
	rm -f /data/*.dat
	./$(PROG1) -f -sc 1 -dir /data
	./$(PROG1) -f -sc 1 -dir /data -update 1
sum: $(PROG1) data_set
	sum /data/*.dat > tpcds_`date '+%Y%m%d'`.sum
test_build: 
	(cd tests; sh -x test_list.sh `date '+%Y%m%d'` 1 1)
####
# Dependencies. Partially hand coded, partially generated by makedepend
####
$(GENERATED): $(PROG4) column_list.txt
	./$(PROG4) column_list.txt
tokenizer.c: tokenizer.l
y.tab.c: qgen.y
	$(YACC) $(YFLAGS) qgen.y
y.tab.o: y.tab.c
y.tab.h: qgen.y
	$(YACC) $(YFLAGS) qgen.y
tpcds.idx.h: $(IDXSRC) $(PROG3)
	./$(PROG3) -i tpcds.dst -o tpcds.idx
expr.o: y.tab.h
qgen_error.o: error_msg.c
	$(CC) $(CFLAGS) -DQGEN -c -o qgen_error.o error_msg.c
qgen:
	@make qgen2$(EXE)
join.o: tpcds.idx.h
driver.o: tpcds.idx.h
mkheader.o: mkheader.c 
$(OBJ1) $(OBJ2) $(OBJ3): $(GENERATED)
# DO NOT DELETE

address.o: config.h porting.h address.h constants.h dist.h r_params.h
address.o: genrand.h decimal.h mathops.h date.h columns.h tables.h tdefs.h
address.o: tdef_functions.h permute.h scaling.h
build_support.o: config.h porting.h decimal.h mathops.h constants.h dist.h
build_support.o: r_params.h genrand.h date.h address.h tdefs.h tables.h
build_support.o: columns.h tdef_functions.h build_support.h pricing.h
build_support.o: StringBuffer.h error_msg.h scaling.h
date.o: config.h porting.h date.h mathops.h dist.h
decimal.o: config.h porting.h decimal.h mathops.h
dist.o: config.h porting.h decimal.h mathops.h date.h dist.h genrand.h
dist.o: address.h constants.h error_msg.h r_params.h dcomp.h grammar.h
driver.o: config.h porting.h date.h mathops.h decimal.h genrand.h dist.h
driver.o: address.h constants.h tdefs.h tables.h columns.h tdef_functions.h
driver.o: build_support.h pricing.h params.h r_params.h release.h parallel.h
driver.o: scaling.h load.h error_msg.h print.h tpcds.idx.h grammar_support.h
driver.o: scd.h
error_msg.o: config.h porting.h error_msg.h grammar_support.h
expr.o: config.h porting.h error_msg.h StringBuffer.h expr.h list.h mathops.h
expr.o: y.tab.h substitution.h eval.h grammar_support.h date.h keywords.h
expr.o: dist.h genrand.h decimal.h address.h constants.h permute.h
genrand.o: config.h porting.h decimal.h mathops.h date.h genrand.h dist.h
genrand.o: address.h constants.h r_params.h params.h release.h columns.h
genrand.o: tables.h streams.h
grammar_support.o: config.h porting.h StringBuffer.h expr.h list.h mathops.h
grammar_support.o: grammar_support.h keywords.h error_msg.h qgen_params.h
grammar_support.o: r_params.h release.h substitution.h eval.h
join.o: config.h porting.h date.h mathops.h decimal.h dist.h constants.h
join.o: columns.h genrand.h address.h tdefs.h tables.h tdef_functions.h
join.o: build_support.h pricing.h tpcds.idx.h scaling.h w_web_sales.h
join.o: error_msg.h scd.h r_params.h sparse.h
list.o: config.h porting.h list.h error_msg.h
load.o: config.h porting.h tables.h
misc.o: config.h porting.h date.h mathops.h decimal.h dist.h misc.h tdefs.h
misc.o: tables.h columns.h tdef_functions.h r_params.h genrand.h address.h
misc.o: constants.h
nulls.o: config.h porting.h nulls.h genrand.h decimal.h mathops.h date.h
nulls.o: dist.h address.h constants.h tdefs.h tables.h columns.h
nulls.o: tdef_functions.h
parallel.o: config.h porting.h r_params.h scaling.h tdefs.h tables.h
parallel.o: columns.h tdef_functions.h genrand.h decimal.h mathops.h date.h
parallel.o: dist.h address.h constants.h
permute.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
permute.o: address.h constants.h
pricing.o: config.h porting.h decimal.h mathops.h pricing.h constants.h
pricing.o: columns.h error_msg.h dist.h driver.h genrand.h date.h address.h
pricing.o: w_web_sales.h s_pline.h
print.o: config.h porting.h tables.h print.h tdef_functions.h r_params.h
print.o: date.h mathops.h decimal.h tdefs.h columns.h nulls.h constants.h
print.o: build_support.h dist.h pricing.h
r_params.o: config.h porting.h r_params.h tdefs.h tables.h columns.h
r_params.o: tdef_functions.h release.h
StringBuffer.o: config.h porting.h StringBuffer.h
tdef_functions.o: w_call_center.h constants.h pricing.h decimal.h config.h
tdef_functions.o: porting.h mathops.h address.h date.h w_catalog_page.h
tdef_functions.o: w_catalog_returns.h w_catalog_sales.h w_customer.h
tdef_functions.o: w_customer_address.h w_customer_demographics.h w_datetbl.h
tdef_functions.o: w_household_demographics.h w_income_band.h w_inventory.h
tdef_functions.o: w_item.h w_promotion.h w_reason.h w_ship_mode.h w_store.h
tdef_functions.o: w_store_returns.h w_store_sales.h w_timetbl.h w_warehouse.h
tdef_functions.o: w_web_page.h w_web_returns.h w_web_sales.h w_web_site.h
tdef_functions.o: dbgen_version.h s_brand.h s_customer_address.h
tdef_functions.o: s_call_center.h s_catalog.h s_catalog_order.h
tdef_functions.o: s_catalog_order_lineitem.h s_catalog_page.h
tdef_functions.o: s_catalog_promotional_item.h s_catalog_returns.h
tdef_functions.o: s_category.h s_class.h s_company.h s_customer.h
tdef_functions.o: s_division.h s_inventory.h s_item.h s_manager.h
tdef_functions.o: s_manufacturer.h s_market.h s_pline.h s_product.h
tdef_functions.o: s_promotion.h s_purchase.h s_reason.h s_store.h
tdef_functions.o: s_store_promotional_item.h s_store_returns.h
tdef_functions.o: s_subcategory.h s_subclass.h s_warehouse.h s_web_order.h
tdef_functions.o: s_web_order_lineitem.h s_web_page.h
tdef_functions.o: s_web_promotional_item.h s_web_returns.h s_web_site.h
tdef_functions.o: s_zip_to_gmt.h tdef_functions.h tables.h validate.h
tdefs.o: config.h porting.h tables.h columns.h genrand.h decimal.h mathops.h
tdefs.o: date.h dist.h address.h constants.h tdefs.h tdef_functions.h
tdefs.o: scaling.h w_tdefs.h s_tdefs.h r_params.h
text.o: config.h porting.h decimal.h mathops.h date.h genrand.h dist.h
text.o: address.h constants.h
scd.o: config.h porting.h tdefs.h tables.h columns.h tdef_functions.h scd.h
scd.o: decimal.h mathops.h build_support.h date.h dist.h pricing.h scaling.h
scd.o: genrand.h address.h constants.h parallel.h params.h r_params.h
scd.o: release.h print.h permute.h
scaling.o: config.h porting.h dist.h constants.h genrand.h decimal.h
scaling.o: mathops.h date.h address.h columns.h tdefs.h tables.h
scaling.o: tdef_functions.h error_msg.h r_params.h w_inventory.h scaling.h
scaling.o: tpcds.idx.h print.h parallel.h scd.h
release.o: config.h porting.h release.h r_params.h
scd.o: config.h porting.h tdefs.h tables.h columns.h tdef_functions.h scd.h
scd.o: decimal.h mathops.h build_support.h date.h dist.h pricing.h scaling.h
scd.o: genrand.h address.h constants.h parallel.h params.h r_params.h
scd.o: release.h print.h permute.h
sparse.o: config.h porting.h scaling.h genrand.h decimal.h mathops.h date.h
sparse.o: dist.h address.h constants.h sparse.h tdefs.h tables.h columns.h
sparse.o: tdef_functions.h error_msg.h
porting.o: config.h porting.h
validate.o: config.h porting.h tdefs.h tables.h columns.h tdef_functions.h
validate.o: r_params.h parallel.h constants.h scd.h decimal.h mathops.h
validate.o: permute.h print.h
dcgram.o: config.h porting.h error_msg.h grammar.h dist.h dcomp.h r_params.h
dcgram.o: dcgram.h
dcomp.o: config.h porting.h r_params.h dcomp_params.h error_msg.h grammar.h
dcomp.o: dist.h dcgram.h dcomp.h substitution.h StringBuffer.h expr.h list.h
dcomp.o: mathops.h eval.h grammar_support.h
grammar.o: config.h porting.h grammar.h error_msg.h StringBuffer.h expr.h
grammar.o: list.h mathops.h decimal.h date.h
s_brand.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_brand.o: address.h constants.h s_brand.h print.h columns.h build_support.h
s_brand.o: pricing.h tables.h parallel.h
s_customer_address.o: config.h porting.h w_customer_address.h constants.h
s_customer_address.o: address.h s_customer_address.h date.h mathops.h
s_customer_address.o: decimal.h genrand.h dist.h columns.h build_support.h
s_customer_address.o: pricing.h print.h tables.h nulls.h tdefs.h
s_customer_address.o: tdef_functions.h
scaling.o: config.h porting.h dist.h constants.h genrand.h decimal.h
scaling.o: mathops.h date.h address.h columns.h tdefs.h tables.h
scaling.o: tdef_functions.h error_msg.h r_params.h w_inventory.h scaling.h
scaling.o: tpcds.idx.h print.h parallel.h scd.h
s_call_center.o: config.h porting.h s_call_center.h genrand.h decimal.h
s_call_center.o: mathops.h date.h dist.h address.h constants.h r_params.h
s_call_center.o: scaling.h tables.h build_support.h columns.h pricing.h
s_call_center.o: print.h w_call_center.h permute.h scd.h
s_catalog.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_catalog.o: address.h constants.h s_catalog.h print.h columns.h
s_catalog.o: build_support.h pricing.h misc.h tables.h
s_catalog_order.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_catalog_order.o: dist.h address.h constants.h s_catalog_order.h
s_catalog_order.o: s_catalog_order_lineitem.h pricing.h s_catalog_returns.h
s_catalog_order.o: print.h columns.h build_support.h tables.h misc.h
s_catalog_order.o: scaling.h params.h r_params.h release.h w_web_sales.h
s_catalog_order.o: parallel.h
s_catalog_order_lineitem.o: config.h porting.h genrand.h decimal.h mathops.h
s_catalog_order_lineitem.o: date.h dist.h address.h constants.h
s_catalog_order_lineitem.o: s_catalog_order_lineitem.h pricing.h
s_catalog_order_lineitem.o: s_catalog_order.h w_web_sales.h print.h columns.h
s_catalog_order_lineitem.o: build_support.h tables.h parallel.h permute.h
s_catalog_order_lineitem.o: scaling.h scd.h
s_catalog_page.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_catalog_page.o: dist.h address.h constants.h s_catalog_page.h
s_catalog_page.o: w_catalog_page.h print.h columns.h build_support.h
s_catalog_page.o: pricing.h tables.h scaling.h tdef_functions.h validate.h
s_catalog_page.o: parallel.h
s_catalog_promotional_item.o: config.h porting.h genrand.h decimal.h
s_catalog_promotional_item.o: mathops.h date.h dist.h address.h constants.h
s_catalog_promotional_item.o: s_catalog_promotional_item.h print.h columns.h
s_catalog_promotional_item.o: build_support.h pricing.h tables.h
s_catalog_returns.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_catalog_returns.o: dist.h address.h constants.h s_catalog_returns.h
s_catalog_returns.o: pricing.h s_catalog_order.h s_catalog_order_lineitem.h
s_catalog_returns.o: print.h columns.h build_support.h tables.h parallel.h
s_category.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_category.o: address.h constants.h s_category.h print.h columns.h
s_category.o: build_support.h pricing.h tables.h misc.h
s_class.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_class.o: address.h constants.h s_class.h print.h build_support.h columns.h
s_class.o: pricing.h tables.h misc.h parallel.h
s_company.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_company.o: address.h constants.h s_company.h print.h columns.h
s_company.o: build_support.h pricing.h tables.h parallel.h
s_customer.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_customer.o: address.h constants.h s_customer.h print.h columns.h
s_customer.o: build_support.h pricing.h tables.h scaling.h parallel.h
s_customer.o: w_customer_demographics.h w_customer_address.h permute.h
s_division.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_division.o: address.h constants.h s_division.h print.h columns.h
s_division.o: build_support.h pricing.h tables.h parallel.h
s_inventory.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_inventory.o: address.h constants.h s_inventory.h print.h columns.h
s_inventory.o: build_support.h pricing.h tables.h r_params.h parallel.h
s_inventory.o: scaling.h scd.h
s_item.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_item.o: address.h constants.h s_item.h w_item.h print.h columns.h
s_item.o: build_support.h pricing.h tables.h misc.h parallel.h permute.h
s_item.o: scaling.h scd.h tdef_functions.h r_params.h
s_manager.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_manager.o: address.h constants.h s_manager.h print.h columns.h
s_manager.o: build_support.h pricing.h tables.h parallel.h
s_manufacturer.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_manufacturer.o: dist.h address.h constants.h s_manufacturer.h print.h
s_manufacturer.o: columns.h build_support.h pricing.h tables.h parallel.h
s_market.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_market.o: address.h constants.h s_market.h print.h columns.h
s_market.o: build_support.h pricing.h tables.h misc.h parallel.h
s_pline.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_pline.o: address.h constants.h s_pline.h pricing.h s_purchase.h print.h
s_pline.o: columns.h build_support.h tables.h misc.h parallel.h scaling.h
s_pline.o: permute.h scd.h
s_product.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_product.o: address.h constants.h s_product.h print.h columns.h
s_product.o: build_support.h pricing.h tables.h parallel.h
s_promotion.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_promotion.o: address.h constants.h s_promotion.h w_promotion.h print.h
s_promotion.o: columns.h build_support.h pricing.h tables.h misc.h parallel.h
s_promotion.o: permute.h scaling.h tdef_functions.h scd.h r_params.h
s_purchase.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_purchase.o: address.h constants.h s_purchase.h s_pline.h pricing.h
s_purchase.o: s_store_returns.h print.h columns.h build_support.h tables.h
s_purchase.o: r_params.h misc.h scaling.h parallel.h
s_reason.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_reason.o: address.h constants.h s_reason.h print.h columns.h
s_reason.o: build_support.h pricing.h tables.h misc.h parallel.h
s_store.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_store.o: address.h constants.h s_store.h w_store.h print.h columns.h
s_store.o: build_support.h pricing.h tables.h parallel.h permute.h scaling.h
s_store.o: scd.h
s_store_promotional_item.o: config.h porting.h genrand.h decimal.h mathops.h
s_store_promotional_item.o: date.h dist.h address.h constants.h
s_store_promotional_item.o: s_store_promotional_item.h print.h columns.h
s_store_promotional_item.o: build_support.h pricing.h tables.h parallel.h
s_store_returns.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_store_returns.o: dist.h address.h constants.h s_store_returns.h pricing.h
s_store_returns.o: s_purchase.h s_pline.h print.h columns.h build_support.h
s_store_returns.o: tables.h parallel.h
s_subcategory.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_subcategory.o: dist.h address.h constants.h s_subcategory.h print.h
s_subcategory.o: columns.h build_support.h pricing.h tables.h misc.h
s_subcategory.o: parallel.h
s_subclass.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_subclass.o: address.h constants.h s_subclass.h print.h columns.h
s_subclass.o: build_support.h pricing.h tables.h misc.h parallel.h
s_warehouse.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_warehouse.o: address.h constants.h s_warehouse.h w_warehouse.h print.h
s_warehouse.o: columns.h build_support.h pricing.h tables.h misc.h parallel.h
s_warehouse.o: permute.h scaling.h
s_web_order.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_web_order.o: address.h constants.h s_web_order.h print.h columns.h
s_web_order.o: build_support.h pricing.h tables.h misc.h
s_web_order.o: s_web_order_lineitem.h params.h r_params.h release.h scaling.h
s_web_order.o: w_web_sales.h s_web_returns.h parallel.h
s_web_order_lineitem.o: config.h porting.h genrand.h decimal.h mathops.h
s_web_order_lineitem.o: date.h dist.h address.h constants.h
s_web_order_lineitem.o: s_web_order_lineitem.h pricing.h s_web_order.h
s_web_order_lineitem.o: print.h columns.h build_support.h tables.h
s_web_order_lineitem.o: w_web_sales.h parallel.h permute.h scaling.h scd.h
s_web_page.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_web_page.o: address.h constants.h s_web_page.h w_web_page.h print.h
s_web_page.o: columns.h build_support.h pricing.h tables.h scaling.h
s_web_page.o: parallel.h permute.h scd.h tdef_functions.h
s_web_promotinal_item.o: config.h porting.h genrand.h decimal.h mathops.h
s_web_promotinal_item.o: date.h dist.h address.h constants.h
s_web_promotinal_item.o: s_web_promotional_item.h print.h columns.h
s_web_promotinal_item.o: build_support.h pricing.h tables.h parallel.h
s_web_returns.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_web_returns.o: dist.h address.h constants.h s_web_returns.h pricing.h
s_web_returns.o: print.h columns.h build_support.h tables.h w_web_sales.h
s_web_returns.o: s_web_order.h s_web_order_lineitem.h parallel.h
s_web_site.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
s_web_site.o: address.h constants.h s_web_site.h w_web_site.h print.h
s_web_site.o: columns.h build_support.h pricing.h tables.h scaling.h
s_web_site.o: permute.h scd.h
s_zip_to_gmt.o: config.h porting.h genrand.h decimal.h mathops.h date.h
s_zip_to_gmt.o: dist.h address.h constants.h s_zip_to_gmt.h print.h columns.h
s_zip_to_gmt.o: build_support.h pricing.h tables.h tdef_functions.h
s_zip_to_gmt.o: r_params.h parallel.h tdefs.h
w_call_center.o: config.h porting.h w_call_center.h constants.h pricing.h
w_call_center.o: decimal.h mathops.h address.h date.h genrand.h dist.h
w_call_center.o: r_params.h scaling.h columns.h tables.h misc.h
w_call_center.o: build_support.h print.h tdefs.h tdef_functions.h nulls.h
w_call_center.o: scd.h
w_catalog_page.o: config.h porting.h constants.h w_catalog_page.h date.h
w_catalog_page.o: mathops.h decimal.h genrand.h dist.h address.h
w_catalog_page.o: build_support.h columns.h pricing.h misc.h print.h tables.h
w_catalog_page.o: scaling.h nulls.h tdefs.h tdef_functions.h
w_catalog_returns.o: config.h porting.h genrand.h decimal.h mathops.h date.h
w_catalog_returns.o: dist.h address.h constants.h w_catalog_returns.h
w_catalog_returns.o: pricing.h w_catalog_sales.h print.h columns.h
w_catalog_returns.o: build_support.h tables.h nulls.h tdefs.h
w_catalog_returns.o: tdef_functions.h parallel.h
w_catalog_sales.o: config.h porting.h w_catalog_sales.h pricing.h decimal.h
w_catalog_sales.o: mathops.h w_catalog_returns.h date.h genrand.h dist.h
w_catalog_sales.o: address.h constants.h columns.h tables.h build_support.h
w_catalog_sales.o: print.h nulls.h tdefs.h tdef_functions.h scaling.h
w_catalog_sales.o: permute.h params.h r_params.h release.h parallel.h scd.h
w_customer_address.o: config.h porting.h w_customer_address.h constants.h
w_customer_address.o: address.h date.h mathops.h decimal.h genrand.h dist.h
w_customer_address.o: columns.h build_support.h pricing.h print.h tables.h
w_customer_address.o: nulls.h tdefs.h tdef_functions.h
w_customer.o: config.h porting.h constants.h columns.h w_customer.h genrand.h
w_customer.o: decimal.h mathops.h date.h dist.h address.h build_support.h
w_customer.o: pricing.h tables.h print.h nulls.h tdefs.h tdef_functions.h
w_customer_demographics.o: config.h porting.h w_customer_demographics.h
w_customer_demographics.o: genrand.h decimal.h mathops.h date.h dist.h
w_customer_demographics.o: address.h constants.h columns.h build_support.h
w_customer_demographics.o: pricing.h tables.h print.h nulls.h tdefs.h
w_customer_demographics.o: tdef_functions.h sparse.h
w_datetbl.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_datetbl.o: address.h constants.h w_datetbl.h print.h columns.h
w_datetbl.o: build_support.h pricing.h tables.h nulls.h tdefs.h
w_datetbl.o: tdef_functions.h
w_household_demographics.o: config.h porting.h genrand.h decimal.h mathops.h
w_household_demographics.o: date.h dist.h address.h constants.h
w_household_demographics.o: w_household_demographics.h print.h columns.h
w_household_demographics.o: build_support.h pricing.h tables.h nulls.h
w_household_demographics.o: tdefs.h tdef_functions.h sparse.h
w_income_band.o: config.h porting.h genrand.h decimal.h mathops.h date.h
w_income_band.o: dist.h address.h constants.h w_income_band.h print.h
w_income_band.o: columns.h build_support.h pricing.h tables.h nulls.h tdefs.h
w_income_band.o: tdef_functions.h
w_inventory.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_inventory.o: address.h constants.h w_inventory.h print.h columns.h
w_inventory.o: build_support.h pricing.h tables.h scaling.h nulls.h tdefs.h
w_inventory.o: tdef_functions.h scd.h
w_item.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_item.o: address.h constants.h w_item.h print.h columns.h build_support.h
w_item.o: pricing.h tables.h misc.h nulls.h tdefs.h tdef_functions.h scd.h
w_promotion.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_promotion.o: address.h constants.h w_promotion.h print.h columns.h
w_promotion.o: build_support.h pricing.h tables.h misc.h nulls.h tdefs.h
w_promotion.o: tdef_functions.h
w_reason.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_reason.o: address.h constants.h w_reason.h print.h columns.h
w_reason.o: build_support.h pricing.h tables.h nulls.h tdefs.h
w_reason.o: tdef_functions.h
w_ship_mode.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
w_ship_mode.o: address.h constants.h w_ship_mode.h print.h columns.h
w_ship_mode.o: build_support.h pricing.h tables.h nulls.h tdefs.h
w_ship_mode.o: tdef_functions.h
w_store.o: config.h porting.h constants.h w_store.h address.h decimal.h
w_store.o: mathops.h date.h genrand.h dist.h build_support.h columns.h
w_store.o: pricing.h misc.h print.h tables.h scaling.h nulls.h tdefs.h
w_store.o: tdef_functions.h scd.h
w_store_returns.o: config.h porting.h w_store_returns.h pricing.h decimal.h
w_store_returns.o: mathops.h w_store_sales.h constants.h tables.h print.h
w_store_returns.o: columns.h genrand.h date.h dist.h address.h
w_store_returns.o: build_support.h nulls.h tdefs.h tdef_functions.h
w_store_sales.o: config.h porting.h decimal.h mathops.h w_store_sales.h
w_store_sales.o: constants.h pricing.h w_store_returns.h genrand.h date.h
w_store_sales.o: dist.h address.h columns.h build_support.h tables.h print.h
w_store_sales.o: nulls.h tdefs.h tdef_functions.h scaling.h permute.h scd.h
w_store_sales.o: parallel.h
w_timetbl.o: config.h porting.h constants.h w_timetbl.h date.h mathops.h
w_timetbl.o: decimal.h genrand.h dist.h address.h build_support.h columns.h
w_timetbl.o: pricing.h misc.h print.h tables.h nulls.h tdefs.h
w_timetbl.o: tdef_functions.h
w_warehouse.o: config.h porting.h constants.h w_warehouse.h address.h date.h
w_warehouse.o: mathops.h decimal.h genrand.h dist.h build_support.h columns.h
w_warehouse.o: pricing.h misc.h print.h tables.h nulls.h tdefs.h
w_warehouse.o: tdef_functions.h
w_web_page.o: config.h porting.h constants.h w_web_page.h date.h mathops.h
w_web_page.o: decimal.h genrand.h dist.h address.h build_support.h columns.h
w_web_page.o: pricing.h misc.h print.h scaling.h tables.h nulls.h tdefs.h
w_web_page.o: tdef_functions.h scd.h
w_web_returns.o: config.h porting.h pricing.h decimal.h mathops.h
w_web_returns.o: w_web_returns.h w_web_sales.h date.h genrand.h dist.h
w_web_returns.o: address.h constants.h build_support.h columns.h misc.h
w_web_returns.o: print.h error_msg.h tables.h nulls.h tdefs.h
w_web_returns.o: tdef_functions.h
w_web_sales.o: config.h porting.h pricing.h decimal.h mathops.h w_web_sales.h
w_web_sales.o: w_web_returns.h date.h genrand.h dist.h address.h constants.h
w_web_sales.o: build_support.h columns.h misc.h print.h tables.h nulls.h
w_web_sales.o: tdefs.h tdef_functions.h scaling.h permute.h scd.h parallel.h
w_web_site.o: config.h porting.h constants.h address.h w_web_site.h decimal.h
w_web_site.o: mathops.h genrand.h date.h dist.h tables.h columns.h print.h
w_web_site.o: scaling.h build_support.h pricing.h misc.h nulls.h tdefs.h
w_web_site.o: tdef_functions.h scd.h
dbgen_version.o: config.h porting.h dbgen_version.h print.h columns.h
dbgen_version.o: build_support.h decimal.h mathops.h date.h dist.h pricing.h
dbgen_version.o: tables.h misc.h release.h
tokenizer.o: config.h porting.h keywords.h expr.h StringBuffer.h list.h
tokenizer.o: mathops.h y.tab.h qgen_params.h r_params.h release.h
tokenizer.o: substitution.h eval.h grammar_support.h
substitution.o: config.h porting.h error_msg.h dist.h date.h mathops.h
substitution.o: decimal.h misc.h genrand.h address.h constants.h
substitution.o: substitution.h StringBuffer.h expr.h list.h eval.h
QgenMain.o: config.h porting.h StringBuffer.h expr.h list.h mathops.h
QgenMain.o: grammar_support.h keywords.h substitution.h eval.h error_msg.h
QgenMain.o: qgen_params.h r_params.h release.h genrand.h decimal.h date.h
QgenMain.o: dist.h address.h constants.h query_handler.h permute.h
QgenMain.o: tdef_functions.h tables.h
qgen.o: config.h porting.h StringBuffer.h expr.h list.h mathops.h
qgen.o: grammar_support.h keywords.h substitution.h eval.h error_msg.h
qgen.o: tables.h qgen_params.h r_params.h release.h tdefs.h columns.h
qgen.o: tdef_functions.h query_handler.h dist.h scaling.h
query_handler.o: config.h porting.h StringBuffer.h eval.h substitution.h
query_handler.o: expr.h list.h mathops.h error_msg.h qgen_params.h r_params.h
query_handler.o: release.h genrand.h decimal.h date.h dist.h address.h
query_handler.o: constants.h
eval.o: config.h porting.h genrand.h decimal.h mathops.h date.h dist.h
eval.o: address.h constants.h eval.h expr.h StringBuffer.h list.h
eval.o: substitution.h error_msg.h tdefs.h tables.h columns.h
eval.o: tdef_functions.h build_support.h pricing.h scaling.h y.tab.h
eval.o: permute.h keywords.h dcomp.h grammar.h
keywords.o: config.h porting.h keywords.h expr.h StringBuffer.h list.h
keywords.o: mathops.h y.tab.h substitution.h eval.h error_msg.h
keywords.o: query_handler.h
mkheader.o: config.h porting.h
