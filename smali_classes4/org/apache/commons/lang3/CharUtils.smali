.class public Lorg/apache/commons/lang3/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field public static final LF:C = '\n'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_0
    sget-object v1, Lorg/apache/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 30
    return-void

    .line 55
    :cond_0
    sget-object v1, Lorg/apache/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static isAscii(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 403
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlpha(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 460
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsciiAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 498
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 479
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 536
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsciiControl(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 441
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAsciiNumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 517
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiPrintable(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 422
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .locals 0
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 153
    .end local p1    # "defaultValue":C
    :goto_0
    return p1

    .restart local p1    # "defaultValue":C
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_0
.end method

.method public static toChar(Ljava/lang/String;)C
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .prologue
    .line 195
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    .end local p1    # "defaultValue":C
    :goto_0
    return p1

    .restart local p1    # "defaultValue":C
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .locals 1
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0
.end method

.method public static toIntValue(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 218
    invoke-static {p0}, Lorg/apache/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static toIntValue(CI)I
    .locals 1
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .prologue
    .line 240
    invoke-static {p0}, Lorg/apache/commons/lang3/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    add-int/lit8 p1, p0, -0x30

    goto :goto_0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .locals 2
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/CharUtils;->toIntValue(C)I

    move-result v0

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 289
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/CharUtils;->toIntValue(CI)I

    move-result p1

    goto :goto_0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 308
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 309
    sget-object v0, Lorg/apache/commons/lang3/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 353
    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 355
    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .prologue
    .line 380
    if-nez p0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
