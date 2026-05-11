.class public abstract Le/c/b/p$e;
.super Le/c/b/p;
.source ""

# interfaces
.implements Le/c/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Le/c/b/p$e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Le/c/b/p<",
        "TMessageType;TBuilderType;>;",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public e:Le/c/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;-><init>()V

    .line 1
    new-instance v0, Le/c/b/n;

    invoke-direct {v0}, Le/c/b/n;-><init>()V

    .line 2
    iput-object v0, p0, Le/c/b/p$e;->e:Le/c/b/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Le/c/b/x;
    .locals 1

    invoke-super {p0}, Le/c/b/p;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final makeImmutable()V
    .locals 2

    invoke-super {p0}, Le/c/b/p;->makeImmutable()V

    iget-object v0, p0, Le/c/b/p$e;->e:Le/c/b/n;

    .line 1
    iget-boolean v1, v0, Le/c/b/n;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Le/c/b/n;->a:Le/c/b/b0;

    invoke-virtual {v1}, Le/c/b/b0;->h()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/c/b/n;->b:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic newBuilderForType()Le/c/b/x$a;
    .locals 1

    invoke-super {p0}, Le/c/b/p;->newBuilderForType()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Le/c/b/x$a;
    .locals 1

    invoke-super {p0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public visit(Le/c/b/p$k;Le/c/b/p;)V
    .locals 1

    check-cast p2, Le/c/b/p$e;

    .line 1
    invoke-super {p0, p1, p2}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    iget-object v0, p0, Le/c/b/p$e;->e:Le/c/b/n;

    iget-object p2, p2, Le/c/b/p$e;->e:Le/c/b/n;

    invoke-interface {p1, v0, p2}, Le/c/b/p$k;->m(Le/c/b/n;Le/c/b/n;)Le/c/b/n;

    move-result-object p1

    iput-object p1, p0, Le/c/b/p$e;->e:Le/c/b/n;

    return-void
.end method
