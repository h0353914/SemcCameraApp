.class public Lcom/sonymobile/securedatamanager/SecureDataManagerException;
.super Ljava/lang/Exception;


# static fields
.field public static final CUSTOM_MESSAGE:I = -0x1

.field public static final NATIVE_ERROR_GENERIC:I = 0x1

.field public static final NATIVE_ERROR_INVALID_PARAM:I = 0x2

.field public static final NATIVE_ERROR_SECURITY_ERROR:I = 0x3

.field public static final NATIVE_ERROR_SERVICE:I = 0x7


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
