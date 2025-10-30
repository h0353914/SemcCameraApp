.class final Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;
.super Ljava/lang/Object;
.source "LensApi.java"

# interfaces
.implements Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/lens/sdk/LensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LensSdkParamsCallback"
.end annotation


# instance fields
.field private final lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# direct methods
.method constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .registers 2
    .param p1    # Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;->lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    return-void
.end method


# virtual methods
.method public onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi$LensSdkParamsCallback;->lensAvailabilityCallback:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    iget p1, p1, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 112
    # invokes: Lcom/google/lens/sdk/LensApi;->mapInternalLensAvailabilityToExternal(I)I
    invoke-static {p1}, Lcom/google/lens/sdk/LensApi;->access$000(I)I

    move-result p1

    .line 111
    invoke-interface {v0, p1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void
.end method
