.class public Le/b/a/a/o/g/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/b/a/a/o/g/b/a;

.field public b:Le/b/a/a/o/g/b/d;


# direct methods
.method public constructor <init>(Le/b/a/a/o/g/b/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/b/a/a/o/g/b/a;

    sget-object v1, Le/b/a/a/o/g/b/a$b;->g:Le/b/a/a/o/g/b/a$b;

    invoke-direct {v0, v1}, Le/b/a/a/o/g/b/a;-><init>(Le/b/a/a/o/g/b/a$b;)V

    iput-object v0, p0, Le/b/a/a/o/g/b/b;->a:Le/b/a/a/o/g/b/a;

    iput-object p1, p0, Le/b/a/a/o/g/b/b;->b:Le/b/a/a/o/g/b/d;

    return-void
.end method
