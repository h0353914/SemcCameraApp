.class final enum Lorg/apache/commons/imaging/formats/png/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/png/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum AVERAGE:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum PAETH:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum SUB:Lorg/apache/commons/imaging/formats/png/FilterType;

.field public static final enum UP:Lorg/apache/commons/imaging/formats/png/FilterType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 25
    new-instance v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

    .line 26
    new-instance v1, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v3, "SUB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->SUB:Lorg/apache/commons/imaging/formats/png/FilterType;

    .line 27
    new-instance v3, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v5, "UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/formats/png/FilterType;->UP:Lorg/apache/commons/imaging/formats/png/FilterType;

    .line 28
    new-instance v5, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v7, "AVERAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/imaging/formats/png/FilterType;->AVERAGE:Lorg/apache/commons/imaging/formats/png/FilterType;

    .line 29
    new-instance v7, Lorg/apache/commons/imaging/formats/png/FilterType;

    const-string v9, "PAETH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/imaging/formats/png/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/formats/png/FilterType;->PAETH:Lorg/apache/commons/imaging/formats/png/FilterType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/commons/imaging/formats/png/FilterType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 24
    sput-object v9, Lorg/apache/commons/imaging/formats/png/FilterType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/FilterType;
    .registers 2

    .line 24
    const-class v0, Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/FilterType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/FilterType;
    .registers 1

    .line 24
    sget-object v0, Lorg/apache/commons/imaging/formats/png/FilterType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/FilterType;

    return-object v0
.end method
