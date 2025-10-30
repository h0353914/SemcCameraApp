.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 64

    .line 71
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v0, v1

    const/16 v15, 0x63

    const/4 v14, -0x1

    invoke-direct {v1, v15, v15, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v1, v2

    const/16 v3, 0x23

    const/16 v4, 0x24

    invoke-direct {v2, v3, v4, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v2, v3

    const/16 v4, 0x48

    const/16 v13, 0x47

    invoke-direct {v3, v13, v4, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v3, v4

    const/16 v12, 0x60

    invoke-direct {v4, v12, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v5, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v4, v5

    const/16 v6, 0x55

    const/16 v11, 0x56

    invoke-direct {v5, v6, v11, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v6, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v5, v6

    const/16 v7, 0x5a

    invoke-direct {v6, v7, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v7, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v6, v7

    const/16 v8, 0x50

    const/16 v9, 0x51

    invoke-direct {v7, v8, v9, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v8, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v7, v8

    const/4 v10, 0x6

    invoke-direct {v8, v10, v10, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v9, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v8, v9

    const/16 v12, 0x14

    invoke-direct {v9, v12, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v9, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v9

    move-object/from16 v59, v0

    const/16 v0, 0x13

    move-object/from16 v10, v17

    invoke-direct {v10, v0, v0, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v10, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v10

    const/4 v0, 0x6

    const/16 v11, 0x20

    const/16 v12, 0x22

    move-object/from16 v13, v17

    invoke-direct {v13, v11, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v12, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v13, 0x56

    move-object v11, v12

    const/16 v13, 0x60

    invoke-direct {v12, v13, v13, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v12, Landroidx/core/text/util/FindAddress$ZipRange;

    move v0, v13

    move-object v13, v12

    const/16 v15, 0x1e

    const/16 v0, 0x1f

    invoke-direct {v13, v15, v0, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v60, v1

    const/16 v1, 0x56

    const/16 v15, 0x47

    move-object v13, v0

    const/16 v15, 0x60

    invoke-direct {v0, v15, v15, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move v1, v14

    move-object v14, v0

    invoke-direct {v0, v15, v15, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v15, v0

    move-object/from16 v61, v2

    const/16 v2, 0x32

    move-object/from16 v62, v3

    const/16 v3, 0x34

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v16, v0

    const/16 v2, 0x53

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v0

    const/16 v3, 0x3c

    const/16 v2, 0x3e

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v18, v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v19, v0

    const/16 v2, 0x42

    const/16 v3, 0x43

    move-object/from16 v63, v4

    const/16 v4, 0x49

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v20, v0

    const/16 v2, 0x28

    const/16 v3, 0x2a

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v21, v0

    const/16 v2, 0x46

    const/16 v3, 0x47

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v22, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v23, v0

    const/16 v2, 0x15

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v24, v0

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v25, v0

    const/16 v4, 0x60

    invoke-direct {v0, v4, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v26, v0

    const/16 v4, 0x30

    const/16 v2, 0x31

    invoke-direct {v0, v4, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v27, v0

    const/16 v2, 0x37

    const/16 v4, 0x38

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v28, v0

    const/16 v3, 0x3f

    const/16 v2, 0x41

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v29, v0

    const/16 v2, 0x60

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v30, v0

    const/16 v2, 0x27

    const/16 v3, 0x26

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v31, v0

    const/16 v2, 0x37

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v32, v0

    const/16 v2, 0x1b

    const/16 v4, 0x1c

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v33, v0

    const/16 v2, 0x3a

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v34, v0

    const/16 v2, 0x44

    const/16 v4, 0x45

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v35, v0

    const/4 v2, 0x3

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v36, v0

    const/4 v2, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v37, v0

    const/16 v2, 0x57

    const/16 v4, 0x58

    const/16 v3, 0x56

    invoke-direct {v0, v2, v4, v3, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v38, v0

    const/16 v3, 0x59

    const/16 v2, 0x60

    invoke-direct {v0, v4, v3, v2, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v39, v0

    const/16 v2, 0xa

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v1, 0x6

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v40, v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v41, v0

    const/16 v1, 0x4a

    const/16 v2, 0x49

    invoke-direct {v0, v2, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v42, v0

    const/16 v1, 0x61

    invoke-direct {v0, v1, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v43, v0

    const/16 v1, 0xf

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v44, v0

    const/16 v1, 0x9

    const/4 v2, 0x6

    invoke-direct {v0, v2, v2, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v45, v0

    const/16 v2, 0x60

    invoke-direct {v0, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v46, v0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v47, v0

    const/16 v4, 0x1d

    const/16 v2, 0x1d

    invoke-direct {v0, v4, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v48, v0

    const/16 v2, 0x39

    const/16 v4, 0x39

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v49, v0

    const/16 v2, 0x25

    const/16 v4, 0x26

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v50, v0

    const/16 v2, 0x4b

    const/16 v4, 0x4f

    const/16 v1, 0x57

    const/16 v3, 0x58

    invoke-direct {v0, v2, v4, v1, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v51, v0

    const/16 v1, 0x54

    const/16 v2, 0x54

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v52, v0

    const/16 v1, 0x16

    const/16 v2, 0x18

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v53, v0

    const/4 v1, 0x6

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v54, v0

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v55, v0

    const/16 v1, 0x62

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v56, v0

    const/16 v1, 0x35

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v57, v0

    const/16 v1, 0x18

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v58, v0

    const/16 v1, 0x52

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    move-object/from16 v3, v62

    move-object/from16 v4, v63

    filled-new-array/range {v0 .. v58}, [Landroidx/core/text/util/FindAddress$ZipRange;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    .line 151
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    .line 152
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 169
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 170
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 237
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 263
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    .line 264
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 266
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 267
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .registers 15

    .line 402
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result p1

    .line 409
    sget-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    move v9, v1

    move v10, v9

    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v3

    .line 411
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge p1, v11, :cond_d5

    .line 412
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-nez v11, :cond_27

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_25
    neg-int p0, p0

    return p0

    .line 416
    :cond_27
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    sub-int/2addr v11, v12

    const/16 v12, 0x19

    if-le v11, v12, :cond_39

    .line 418
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    goto :goto_25

    .line 422
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    if-ge p1, v11, :cond_51

    add-int/lit8 v11, p1, 0x1

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const-string v12, "\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v12, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v1, :cond_4f

    add-int/lit8 v5, v5, 0x1

    :cond_4f
    move p1, v11

    goto :goto_39

    :cond_51
    const/4 v11, 0x5

    if-le v5, v11, :cond_56

    goto/16 :goto_d5

    :cond_56
    add-int/2addr v6, v2

    const/16 v12, 0xe

    if-le v6, v12, :cond_5d

    goto/16 :goto_d5

    .line 432
    :cond_5d
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v12

    if-eqz v12, :cond_6d

    if-eqz v7, :cond_69

    if-le v5, v2, :cond_69

    neg-int p0, p1

    return p0

    :cond_69
    if-ne v9, v1, :cond_cb

    move v9, p1

    goto :goto_cb

    .line 445
    :cond_6d
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    move v8, v2

    :cond_78
    :goto_78
    move v7, v3

    goto :goto_cb

    :cond_7a
    if-ne v6, v11, :cond_83

    if-nez v8, :cond_83

    .line 452
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    goto :goto_d5

    :cond_83
    if-eqz v8, :cond_78

    const/4 v7, 0x4

    if-le v6, v7, :cond_78

    .line 458
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 460
    const-string v7, "et"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {p1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "al"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 462
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result p1

    goto :goto_d5

    .line 467
    :cond_a7
    sget-object v4, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 468
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 469
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 470
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    return p0

    .line 481
    :cond_c6
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v10

    goto :goto_78

    .line 411
    :cond_cb
    :goto_cb
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    goto/16 :goto_15

    :cond_d5
    :goto_d5
    if-lez v10, :cond_d8

    return v10

    :cond_d8
    if-lez v9, :cond_db

    goto :goto_dc

    :cond_db
    move v9, p1

    :goto_dc
    neg-int p0, v9

    return p0
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 272
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 v1, 0x5

    if-le v2, v1, :cond_1c

    return v0

    .line 278
    :cond_1c
    sget-object v1, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    .line 280
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_34

    return v0

    :cond_34
    const/4 v0, 0x2

    .line 284
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 285
    rem-int/lit8 v3, v1, 0xa

    const-string/jumbo v4, "th"

    if-eq v3, v2, :cond_6e

    if-eq v3, v0, :cond_60

    const/4 v0, 0x3

    if-eq v3, v0, :cond_52

    .line 293
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 291
    :cond_52
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xd

    if-ne v1, v0, :cond_59

    goto :goto_5b

    :cond_59
    const-string v4, "rd"

    :goto_5b
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 289
    :cond_60
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xc

    if-ne v1, v0, :cond_67

    goto :goto_69

    :cond_67
    const-string v4, "nd"

    :goto_69
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 287
    :cond_6e
    rem-int/lit8 v1, v1, 0x64

    const/16 v0, 0xb

    if-ne v1, v0, :cond_75

    goto :goto_78

    :cond_75
    const-string/jumbo v4, "st"

    :goto_78
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7d
    return v2
.end method

.method static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 499
    sget-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 501
    :goto_8
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 503
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 504
    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v3

    if-lez v3, :cond_27

    .line 506
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    neg-int v2, v3

    goto :goto_8

    .line 510
    :cond_29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_8

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .registers 2

    .line 387
    sget-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .registers 2

    .line 376
    sget-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 365
    invoke-static {p1, v0}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result p0

    return p0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 346
    :cond_4
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    :goto_8
    if-lez v1, :cond_16

    add-int/lit8 v2, v1, -0x1

    .line 348
    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_8

    .line 350
    :cond_16
    :goto_16
    sget-object p1, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2d

    sget-object p1, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    aget-object p1, p1, v1

    .line 351
    invoke-virtual {p1, p0}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    .line 309
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 310
    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 312
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object p0

    const/4 p1, 0x0

    .line 313
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    return-object p0

    :cond_37
    return-object v0
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 330
    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    :cond_2b
    return-object v0
.end method
