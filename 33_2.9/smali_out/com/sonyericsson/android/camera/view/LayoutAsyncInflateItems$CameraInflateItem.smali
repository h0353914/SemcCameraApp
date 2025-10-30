.class public final enum Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
.super Ljava/lang/Enum;
.source "LayoutAsyncInflateItems.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraInflateItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

.field public static final enum RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;


# instance fields
.field protected final mInflateId:I

.field protected final mViewCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v1, "HEAD_UP_DISPLAY"

    const/4 v2, 0x0

    const v3, 0x7f0c0026

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 33
    new-instance v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v3, "RECTANGLE_FACE"

    const v5, 0x7f0c0042

    const/4 v6, 0x5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FACE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 36
    new-instance v3, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v5, "RECTANGLE_FAST_SINGLE"

    const/4 v7, 0x2

    const v8, 0x7f0c0043

    invoke-direct {v3, v5, v7, v8, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_SINGLE:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 39
    new-instance v5, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v9, "RECTANGLE_FAST_TOUCH"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v8, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_TOUCH:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 42
    new-instance v8, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v9, "RECTANGLE_FAST_OBJECT_TRACKING"

    const/4 v11, 0x4

    const v12, 0x7f0c0021

    invoke-direct {v8, v9, v11, v12, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->RECTANGLE_FAST_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 45
    new-instance v9, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v12, "AUTO_REVIEW"

    const v13, 0x7f0c005a

    invoke-direct {v9, v12, v6, v13, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    .line 48
    new-instance v12, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const-string v13, "FAST_CAPTURING_VIEWFINDER_ITEMS"

    const/4 v14, 0x6

    const v15, 0x7f0c0044

    invoke-direct {v12, v13, v14, v15, v4}, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->FAST_CAPTURING_VIEWFINDER_ITEMS:Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v7

    aput-object v5, v13, v10

    aput-object v8, v13, v11

    aput-object v9, v13, v6

    aput-object v12, v13, v14

    .line 29
    sput-object v13, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    .line 58
    iput p4, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .registers 2

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;
    .registers 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->$VALUES:[Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mInflateId:I

    return p0
.end method

.method public getViewCount()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/sonyericsson/android/camera/view/LayoutAsyncInflateItems$CameraInflateItem;->mViewCount:I

    return p0
.end method
