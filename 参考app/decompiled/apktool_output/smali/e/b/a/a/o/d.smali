.class public final Le/b/a/a/o/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljavax/crypto/Cipher;

.field public final b:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const-string v2, "getInstance(\"AES\")"

    invoke-static {p1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/d;->a:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-static {p1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/d;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method
