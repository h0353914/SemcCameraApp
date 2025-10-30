.class Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;
.super Landroid/os/AsyncTask;
.source "LensSdkParamsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryGsaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$1;)V
    .registers 3

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;-><init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 p1, 0x0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    .line 153
    # getter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$100(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->LENS_AVAILABILITY_PROVIDER_URI:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_3c

    .line 159
    :cond_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 160
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_32

    move v0, v1

    .line 166
    :cond_32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_47

    if-eqz p1, :cond_3b

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v0

    :cond_3c
    :goto_3c
    const/4 v0, 0x4

    .line 157
    :try_start_3d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_47

    if-eqz p1, :cond_46

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v0

    :catchall_47
    move-exception v0

    if-eqz p1, :cond_4d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const-string v0, "LensSdkParamsReader"

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Lens availability result:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    # getter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->lensSdkParams:Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    invoke-static {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 178
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    const/4 v0, 0x1

    # setter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->lensSdkParamsReady:Z
    invoke-static {p1, v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$302(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Z)Z

    .line 179
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    # getter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->callbacks:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    # getter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->lensSdkParams:Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;->onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V

    goto :goto_40

    .line 182
    :cond_56
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    # getter for: Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->callbacks:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 147
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
