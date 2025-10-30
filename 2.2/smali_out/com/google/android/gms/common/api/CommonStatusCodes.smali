.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final API_NOT_AVAILABLE:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final AUTH_API_ACCESS_FORBIDDEN:I = 0xbb9

.field public static final AUTH_API_CLIENT_ERROR:I = 0xbba

.field public static final AUTH_API_INVALID_CREDENTIALS:I = 0xbb8

.field public static final AUTH_API_SERVER_ERROR:I = 0xbbb

.field public static final AUTH_TOKEN_ERROR:I = 0xbbc

.field public static final AUTH_URL_RESOLUTION:I = 0xbbd

.field public static final CANCELED:I = 0x10

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_64

    packed-switch p0, :pswitch_data_82

    packed-switch p0, :pswitch_data_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    const-string p0, "AUTH_URL_RESOLUTION"

    return-object p0

    :pswitch_1e
    const-string p0, "AUTH_TOKEN_ERROR"

    return-object p0

    :pswitch_21
    const-string p0, "AUTH_API_SERVER_ERROR"

    return-object p0

    :pswitch_24
    const-string p0, "AUTH_API_CLIENT_ERROR"

    return-object p0

    :pswitch_27
    const-string p0, "AUTH_API_ACCESS_FORBIDDEN"

    return-object p0

    :pswitch_2a
    const-string p0, "AUTH_API_INVALID_CREDENTIALS"

    return-object p0

    :pswitch_2d
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_30
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_33
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_36
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_39
    const-string p0, "ERROR"

    return-object p0

    :pswitch_3c
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_3f
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_42
    const-string p0, "SERVICE_INVALID"

    return-object p0

    :pswitch_45
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_48
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_4b
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_4e
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_51
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_54
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_57
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_5a
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :pswitch_5d
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_60
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0xd
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0xbb8
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method
