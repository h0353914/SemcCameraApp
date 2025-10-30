.class final enum Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;
.super Ljava/lang/Enum;
.source "HorizontalLevelMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LayoutOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field public static final enum Landscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field public static final enum Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field public static final enum ReverseLandscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field public static final enum ReversePortrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

.field public static final enum Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-string v1, "Portrait"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-string v1, "Landscape"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-string v1, "ReversePortrait"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const-string v1, "ReverseLandscape"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    const/4 v0, 0x5

    .line 46
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;
    .registers 2

    .line 46
    const-class v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;
    .registers 1

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/HorizontalLevelMeterView$LayoutOrientation;

    return-object v0
.end method
