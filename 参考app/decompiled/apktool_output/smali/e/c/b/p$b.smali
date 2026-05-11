.class public abstract Le/c/b/p$b;
.super Le/c/b/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Le/c/b/p<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Le/c/b/p$b<",
        "TMessageType;TBuilderType;>;>",
        "Le/c/b/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final defaultInstance:Le/c/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public instance:Le/c/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public isBuilt:Z


# direct methods
.method public constructor <init>(Le/c/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/a$a;-><init>()V

    iput-object p1, p0, Le/c/b/p$b;->defaultInstance:Le/c/b/p;

    sget-object v0, Le/c/b/p$j;->i:Le/c/b/p$j;

    invoke-virtual {p1, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/b/p;

    iput-object p1, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/b/p$b;->isBuilt:Z

    return-void
.end method


# virtual methods
.method public final build()Le/c/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->buildPartial()Le/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Le/c/b/a$a;->newUninitializedMessageException(Le/c/b/x;)Le/c/b/c0;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Le/c/b/x;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Le/c/b/p$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    return-object v0

    :cond_0
    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    invoke-virtual {v0}, Le/c/b/p;->makeImmutable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/b/p$b;->isBuilt:Z

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Le/c/b/x;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->buildPartial()Le/c/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Le/c/b/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    sget-object v1, Le/c/b/p$j;->i:Le/c/b/p$j;

    invoke-virtual {v0, v1}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/p;

    iput-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    return-object p0
.end method

.method public bridge synthetic clear()Le/c/b/x$a;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->clear()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Le/c/b/a$a;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->clone()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Le/c/b/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v0

    invoke-virtual {v0}, Le/c/b/p;->newBuilderForType()Le/c/b/p$b;

    move-result-object v0

    invoke-virtual {p0}, Le/c/b/p$b;->buildPartial()Le/c/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    return-object v0
.end method

.method public bridge synthetic clone()Le/c/b/x$a;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->clone()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->clone()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public copyOnWrite()V
    .locals 3

    iget-boolean v0, p0, Le/c/b/p$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    sget-object v1, Le/c/b/p$j;->i:Le/c/b/p$j;

    invoke-virtual {v0, v1}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/p;

    sget-object v1, Le/c/b/p$i;->a:Le/c/b/p$i;

    iget-object v2, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    invoke-virtual {v0, v1, v2}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    iput-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/c/b/p$b;->isBuilt:Z

    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/p$b;->defaultInstance:Le/c/b/p;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Le/c/b/x;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p$b;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic internalMergeFrom(Le/c/b/a;)Le/c/b/a$a;
    .locals 0

    check-cast p1, Le/c/b/p;

    invoke-virtual {p0, p1}, Le/c/b/p$b;->internalMergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p1

    return-object p1
.end method

.method public internalMergeFrom(Le/c/b/p;)Le/c/b/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/c/b/p;->isInitialized(Le/c/b/p;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/p$b;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/p$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/h;",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    :try_start_0
    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    sget-object v1, Le/c/b/p$j;->g:Le/c/b/p$j;

    invoke-virtual {v0, v1, p1, p2}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method

.method public mergeFrom(Le/c/b/p;)Le/c/b/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Le/c/b/p$b;->copyOnWrite()V

    iget-object v0, p0, Le/c/b/p$b;->instance:Le/c/b/p;

    sget-object v1, Le/c/b/p$i;->a:Le/c/b/p$i;

    invoke-virtual {v0, v1, p1}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/p$b;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/p$b;

    move-result-object p1

    return-object p1
.end method
