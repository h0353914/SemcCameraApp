.class Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier$1;
.super Ljava/lang/Object;
.source "AspectRatioApplier.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;->sortResolutionList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier$1;->this$0:Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)I
    .registers 3

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 100
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 95
    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/dependency/AspectRatioApplier$1;->compare(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)I

    move-result p1

    return p1
.end method
