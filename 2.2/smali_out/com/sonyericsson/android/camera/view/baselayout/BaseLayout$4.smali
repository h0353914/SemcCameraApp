.class synthetic Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$4;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1350
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$4;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$4;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$4;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
