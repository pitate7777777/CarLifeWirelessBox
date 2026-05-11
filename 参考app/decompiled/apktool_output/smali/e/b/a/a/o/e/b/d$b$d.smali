.class public final Le/b/a/a/o/e/b/d$b$d;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/o/e/b/d$b;->f(Le/b/a/a/o/e/c/a/b;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Lf/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/o/e/b/d$b;

.field public final synthetic f:Le/b/a/a/o/e/c/a/b;

.field public final synthetic g:J

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;JJ)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/o/e/b/d$b$d;->e:Le/b/a/a/o/e/b/d$b;

    iput-object p2, p0, Le/b/a/a/o/e/b/d$b$d;->f:Le/b/a/a/o/e/c/a/b;

    iput-wide p3, p0, Le/b/a/a/o/e/b/d$b$d;->g:J

    iput-wide p5, p0, Le/b/a/a/o/e/b/d$b$d;->h:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/b/a/a/o/e/b/d$b$d;->e:Le/b/a/a/o/e/b/d$b;

    .line 2
    iget-object v1, v0, Le/b/a/a/o/e/b/d$b;->e:Le/b/a/a/o/e/b/d$a;

    .line 3
    iget-object v2, p0, Le/b/a/a/o/e/b/d$b$d;->f:Le/b/a/a/o/e/c/a/b;

    iget-wide v3, p0, Le/b/a/a/o/e/b/d$b$d;->g:J

    iget-wide v5, p0, Le/b/a/a/o/e/b/d$b$d;->h:J

    invoke-interface/range {v1 .. v6}, Le/b/a/a/o/e/b/d$a;->f(Le/b/a/a/o/e/c/a/b;JJ)V

    .line 4
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
