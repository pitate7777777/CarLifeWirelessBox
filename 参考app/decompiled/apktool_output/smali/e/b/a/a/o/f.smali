.class public final Le/b/a/a/o/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/f$a;
    }
.end annotation


# static fields
.field public static final c:Le/b/a/a/o/f$a;


# instance fields
.field public final a:Ljava/security/Key;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/b/a/a/o/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/b/a/a/o/f$a;-><init>(Lf/m/b/b;)V

    sput-object v0, Le/b/a/a/o/f;->c:Le/b/a/a/o/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/security/Key;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformation"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/f;->a:Ljava/security/Key;

    iput-object p2, p0, Le/b/a/a/o/f;->b:Ljava/lang/String;

    return-void
.end method
