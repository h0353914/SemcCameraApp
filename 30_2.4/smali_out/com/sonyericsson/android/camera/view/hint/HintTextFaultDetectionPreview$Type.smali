.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;
.super Ljava/lang/Enum;
.source "HintTextFaultDetectionPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

.field public static final enum FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

.field public static final enum OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

.field public static final enum OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;


# instance fields
.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    const-string v1, "FINGER_COVERING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    const-string v1, "OUT_OF_FOCUS_NEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    const-string v1, "OUT_OF_FOCUS_DARK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    .line 24
    new-array v0, v5, [Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->FINGER_COVERING:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_NEAR:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->OUT_OF_FOCUS_DARK:Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->mPriority:I

    .line 32
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;
    .registers 2

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;
    .registers 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->mPriority:I

    return v0
.end method

.method public isPriorityHigh(Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;)Z
    .registers 3

    .line 40
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextFaultDetectionPreview$Type;->getPriority()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method
