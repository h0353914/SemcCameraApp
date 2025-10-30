.class public final enum Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
.super Ljava/lang/Enum;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field public static final enum NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 105
    new-instance v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    const-string v3, "NEWLY_ADDED_CONTENT_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 98
    sput-object v3, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .registers 2

    .line 98
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .registers 1

    .line 98
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-object v0
.end method
