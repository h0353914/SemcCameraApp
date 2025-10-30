.class final enum Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
.super Ljava/lang/Enum;
.source "SpecialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

.field public static final enum NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;


# instance fields
.field private final configuration:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field final descriptionResourceId:I

.field private final editActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final iconResourceId:I

.field private final interactActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private launchActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final nameResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    .line 18
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;-><init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->nameResourceId:I

    .line 76
    iput p4, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->descriptionResourceId:I

    .line 77
    iput p5, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->iconResourceId:I

    .line 78
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->editActivityClass:Ljava/lang/Class;

    .line 79
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->interactActivityClass:Ljava/lang/Class;

    .line 80
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->launchActivityClass:Ljava/lang/Class;

    .line 81
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->configuration:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    if-eqz p9, :cond_16

    .line 84
    invoke-virtual {p9, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V

    :cond_16
    return-void
.end method

.method private static getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .registers 2

    .line 10
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .registers 1

    .line 10
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    return-object v0
.end method


# virtual methods
.method getConfiguration()Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->configuration:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    if-eqz p0, :cond_5

    return-object p0

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method getEditActivityClassName()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->editActivityClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getInteractActivityClassName()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->interactActivityClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getLaunchActivityClassName()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->launchActivityClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getActivityClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
