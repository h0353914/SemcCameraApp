.class Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$4;
.super Ljava/lang/Object;
.source "FaultDetectionViewController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/android/camera/faultdetection/DetectionType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$4;->this$0:Lcom/sonyericsson/android/camera/view/FaultDetectionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)I
    .registers 3

    .line 123
    iget p1, p1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->priority:I

    iget p2, p2, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;->priority:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 120
    check-cast p1, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    check-cast p2, Lcom/sonyericsson/android/camera/faultdetection/DetectionType;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/FaultDetectionViewController$4;->compare(Lcom/sonyericsson/android/camera/faultdetection/DetectionType;Lcom/sonyericsson/android/camera/faultdetection/DetectionType;)I

    move-result p1

    return p1
.end method
