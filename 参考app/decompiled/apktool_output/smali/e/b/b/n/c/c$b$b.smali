.class public final Le/b/b/n/c/c$b$b;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/n/c/c$b;->q(Le/b/b/n/c/d/b;ILjava/lang/String;)V
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
.field public final synthetic e:Le/b/b/n/c/c;

.field public final synthetic f:Le/b/b/n/c/c$b;

.field public final synthetic g:Le/b/b/n/c/d/b;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/b/b/n/c/c;Le/b/b/n/c/c$b;Le/b/b/n/c/d/b;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/b/b/n/c/c$b$b;->e:Le/b/b/n/c/c;

    iput-object p2, p0, Le/b/b/n/c/c$b$b;->f:Le/b/b/n/c/c$b;

    iput-object p3, p0, Le/b/b/n/c/c$b$b;->g:Le/b/b/n/c/d/b;

    iput p4, p0, Le/b/b/n/c/c$b$b;->h:I

    iput-object p5, p0, Le/b/b/n/c/c$b$b;->i:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayer "

    aput-object v3, v1, v2

    .line 1
    iget-object v2, p0, Le/b/b/n/c/c$b$b;->e:Le/b/b/n/c/c;

    .line 2
    iget v2, v2, Le/b/b/n/c/c;->b:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, " onError"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 4
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Le/b/b/n/c/c$b$b;->f:Le/b/b/n/c/c$b;

    .line 8
    iget-object v0, v0, Le/b/b/n/c/c$b;->e:Le/b/b/n/c/c$a;

    .line 9
    iget-object v1, p0, Le/b/b/n/c/c$b$b;->g:Le/b/b/n/c/d/b;

    iget v2, p0, Le/b/b/n/c/c$b$b;->h:I

    iget-object v3, p0, Le/b/b/n/c/c$b$b;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Le/b/b/n/c/c$a;->q(Le/b/b/n/c/d/b;ILjava/lang/String;)V

    .line 10
    sget-object v0, Lf/h;->a:Lf/h;

    return-object v0
.end method
