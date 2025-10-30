.class enum Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.super Ljava/lang/Enum;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 10
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;

    const-string v1, "BADGE"

    const-string v2, "badge"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2;

    const-string v1, "EDIT"

    const-string v2, "edit"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$3;

    const-string v1, "INTERACT"

    const-string v2, "interact"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;)V
    .registers 5

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(ZLjava/lang/String;)V
    .registers 2

    .line 8
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkResourceId(ILjava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 78
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a valid resource id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .registers 2

    .line 8
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .registers 1

    .line 8
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->key:Ljava/lang/String;

    return-object v0
.end method

.method validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V
    .registers 4

    .line 72
    iget v0, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->descriptionResourceId:I

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 73
    iget v0, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->iconResourceId:I

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 74
    iget p1, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->nameResourceId:I

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    return-void
.end method
