.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
.super Ljava/lang/Enum;
.source "ViewFinderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

.field public static final enum HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

.field public static final enum VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;


# instance fields
.field flag:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 72
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 73
    new-instance v3, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const-string v5, "HORIZONTAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 70
    sput-object v5, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;I)Z
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->isAccepted(I)Z

    move-result p0

    return p0
.end method

.method private isAccepted(I)Z
    .registers 2

    .line 83
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .registers 2

    .line 70
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .registers 1

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object v0
.end method
