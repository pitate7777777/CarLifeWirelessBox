.class public final Le/b/a/a/o/h/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Le/b/a/a/o/f;

.field public b:Le/b/a/a/o/d;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/a/o/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/h/f/a;->a:Le/b/a/a/o/f;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/h/f/a;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/h/f/a;->a:Le/b/a/a/o/f;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const-string v1, "data"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v3, "decode(data, Base64.NO_WRAP)"

    invoke-static {p1, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Le/b/a/a/o/f;->b:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v0, v0, Le/b/a/a/o/f;->a:Ljava/security/Key;

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->update([B)[B

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    const-string v0, "cipher.doFinal()"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/b/a/a/o/d;

    invoke-direct {v0, p1}, Le/b/a/a/o/d;-><init>([B)V

    .line 4
    iput-object v0, p0, Le/b/a/a/o/h/f/a;->b:Le/b/a/a/o/d;

    iget-object p1, p0, Le/b/a/a/o/h/f/a;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "you must pass a non null RSAEncryptor in constructor"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
