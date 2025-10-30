.class public abstract Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# static fields
.field public static final ANY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

.field public static final ASCII_OR_BYTE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final BYTE_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

.field public static final FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

.field public static final IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG_OR_IFD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final SHORT_OR_LONG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;


# instance fields
.field private final elementSize:I

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 32
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v1, 0x1

    const-string v2, "Byte"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 33
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const/4 v3, 0x2

    const-string v4, "ASCII"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    .line 34
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/4 v5, 0x3

    const-string v6, "Short"

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    .line 35
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v7, 0x4

    const-string v8, "Long"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    .line 36
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/4 v9, 0x5

    const-string v10, "Rational"

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    .line 37
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v11, 0x6

    const-string v12, "SByte"

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 38
    new-instance v12, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v13, 0x7

    const-string v14, "Undefined"

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 39
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const/16 v15, 0x8

    const-string v13, "SShort"

    invoke-direct {v14, v15, v13}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v14, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    .line 40
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v15, 0x9

    const-string v11, "SLong"

    invoke-direct {v13, v15, v11}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    .line 41
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const/16 v15, 0xa

    const-string v9, "SRational"

    invoke-direct {v11, v15, v9}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    .line 42
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    const/16 v15, 0xb

    const-string v7, "Float"

    invoke-direct {v9, v15, v7}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    .line 43
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    const/16 v15, 0xc

    const-string v5, "Double"

    invoke-direct {v7, v15, v5}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    .line 44
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v15, 0xd

    const-string v3, "IFD"

    invoke-direct {v5, v15, v3}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    new-array v3, v15, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    aput-object v2, v3, v1

    const/16 v19, 0x2

    aput-object v4, v3, v19

    const/16 v18, 0x3

    aput-object v6, v3, v18

    const/16 v17, 0x4

    aput-object v8, v3, v17

    const/16 v16, 0x5

    aput-object v10, v3, v16

    const/4 v10, 0x6

    aput-object v12, v3, v10

    const/4 v10, 0x7

    aput-object v14, v3, v10

    const/16 v10, 0x8

    aput-object v13, v3, v10

    const/16 v10, 0x9

    aput-object v11, v3, v10

    const/16 v10, 0xa

    aput-object v9, v3, v10

    const/16 v9, 0xb

    aput-object v7, v3, v9

    const/16 v7, 0xc

    aput-object v5, v3, v7

    .line 50
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    const/4 v3, 0x2

    new-array v7, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v4, v7, v15

    aput-object v6, v7, v1

    .line 58
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG:Ljava/util/List;

    new-array v7, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v4, v7, v15

    aput-object v8, v7, v1

    .line 62
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_RATIONAL:Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v4, v7, v15

    aput-object v6, v7, v1

    aput-object v8, v7, v3

    .line 66
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;

    new-array v7, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v4, v7, v15

    aput-object v6, v7, v1

    .line 70
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_SHORT:Ljava/util/List;

    new-array v7, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v4, v7, v15

    aput-object v0, v7, v1

    .line 74
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE_OR_SHORT:Ljava/util/List;

    new-array v4, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v6, v4, v15

    aput-object v5, v4, v1

    .line 78
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_IFD:Ljava/util/List;

    new-array v4, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v4, v15

    aput-object v8, v4, v1

    .line 82
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_RATIONAL:Ljava/util/List;

    new-array v3, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    aput-object v2, v3, v15

    aput-object v0, v3, v1

    .line 86
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_BYTE:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    .line 92
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    .line 93
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return-void
.end method

.method public static getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    .line 111
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v2

    if-ne v2, p0, :cond_6

    return-object v1

    .line 115
    :cond_19
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is unsupported"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 106
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 98
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    return p0
.end method

.method public abstract getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
.end method

.method public abstract writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method
