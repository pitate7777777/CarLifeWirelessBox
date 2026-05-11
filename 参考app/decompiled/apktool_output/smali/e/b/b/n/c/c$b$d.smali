.class public final Le/b/b/n/c/c$b$d;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/n/c/c$b;->x(Le/b/b/n/c/d/b;JJ)V
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
.field public final synthetic e:Le/b/b/n/c/c$b;

.field public final synthetic f:Le/b/b/n/c/d/b;

.field public final synthetic g:J

.field public final synthetic h:J


# direct methods
.method public constructor <init>(Le/b/b/n/c/c$b;Le/b/b/n/c/d/b;JJ)V
    .locals 0

    iput-object p1, p0, Le/b/b/n/c/c$b$d;->e:Le/b/b/n/c/c$b;

    iput-object p2, p0, Le/b/b/n/c/c$b$d;->f:Le/b/b/n/c/d/b;

    iput-wide p3, p0, Le/b/b/n/c/c$b$d;->g:J

    iput-wide p5, p0, Le/b/b/n/c/c$b$d;->h:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/b/b/n/c/c$b$d;->e:Le/b/b/n/c/c$b;

    .line 2
    iget-object v1, v0, Le/b/b/n/c/c$b;->e:Le/b/b/n/c/c$a;

    .line 3
    iget-object v2, p0, Le/b/b/n/c/c$b$d;->f:Le/b/b/n/c/d/b;

    iget-wide v3, p0, Le/b/b/n/c/c$b$d;->g:J

    iget-wide v5, p0, Le/b/b/n/c/c$b$d;->h:J

    invoke-interface/range {v1 .. v6}, Le/b/b/n/c/c$a;->x(Le/b/b/n/c/d/b;JJ)V

    .line 4
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
