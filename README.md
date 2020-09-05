# What is Apache Tika Server?

Apache Tika Server is a server edition of Apache Tika.

Apache Tika is a content detection and analysis framework. It allows users to easy text-extraction for thousand different file types (such as PPT, XLS, and PDF) in the single interface. Tika useful for search engine indexing, content analysis, translation, and much more.

Tika is a project of the [Apache Software Foundation](https://www.apache.org/) and was formely a subproject of [Apache Lucene](https://lucene.apache.org/).

[wikipedia.org/wiki/Apache_Tika](https://.wikipedia.org/wiki/Apache_Tika)

# How to use this image

## Run Tika Server

```bash
$ docker run -d -p 9998:9998 --name some-tika kujira/tika
```

## ...via [`docker-compose`](https://github.com/docker/compose)

Example `docker-compose.yml` for `kujira/tika`:

```yml
version: '3.1'

services:
    tika:
        image: kujira/tika
        restart: always
        ports:
          - 9998:9998
```

## Where to Store Data

Tika does not use data store.

## Port Mapping

Tika exposes `9998` port in the container. Just add `-p 9998:9998` to the `docker run` arguments and then access either `http://localhost:9998` or `http://host-ip:9998` in a browser.

## Environment Variables

When you start the `kujira/tika` image, you can adjust the configuration of the instance by passing one or more environment variables on the `docker run` command line.

### `TIKA_TEXT_CSV_CONFIDENCE`

Set a fraction value to determine text file is csv or not in. Default is `0.5`.

### `TIKA_HTML_EXTRACT_SCRIPTS`

Set `true` to enable HTML script extraction. Default is `false`.

### `TIKA_OFFICE_EXTRACT_MACROS`

Set `true` to enable VBA macro extraction. Default is `false`.

### `TIKA_OFFICE_INCLUDE_DELETED_CONTENT`

Set `true` to enable deleted content extraction. Default is `false`.

### `TIKA_OFFICE_INCLUDE_MOVED_CONTENT`

Set `true` to enable moved content extraction. Default is `false`.

### `TIKA_OFFICE_INCLUDE_SHAPE_CONTENT`

Set `true` to enable moved content extraction. Default is `false`.

### `TIKA_OFFICE_INCLUDE_HEADER_FOOTER`

Set `false` to disable header and footer extraction. Default is `true`.

### `TIKA_OFFICE_INCLUDE_MISSING_ROWS`

Set `true`  to enable missing rows extraction. Default is `false`.

### `TIKA_OFFICE_INCLUDE_SLIDE_NOTES`

Set `false` to disable slide note extraction. Default is `true`.

### `TIKA_OFFICE_INCLUDE_SLIDE_MASTER`

Set `false` to disable slide master extraction. Default is `true`.

### `TIKA_OFFICE_INCLUDE_PHONETIC`

Set `false` to disable concatenate phonetic(aka. furigana) extraction. Default is `true`.
When true, <ruby><rb>山田太郎</rb><rt>ヤマダタロウ</rt></ruby> will be extracted to 山田太郎ヤマダタロウ.

### `TIKA_OFFICE_USE_SAX_EXTRACTOR`

Set `true` to enable SAX docx and pptx extraction. Default is `false`.

### `TIKA_OFFICE_DATE_OVERRIDE_FORMAT`

Sets the format of date string. Default is `yyyy-mm-dd`.
You can find custom date format [here](https://support.microsoft.com/en-us/office/format-a-date-the-way-you-want-8e10019e-d5d8-47a1-ba95-db95123d273e).

### `TIKA_TESSERACT_OCR_LANGUAGE`

Set Tesseract OCR language model name. Default is `eng`. You can join several model names with `+` character, like this: `eng+deu+fra`

**Supported model names**
+ `deu` (German)
+ `eng` (English)
+ `fra` (French)
+ `ita` (Itarian)
+ `jpn` (Japanese)
+ `jpn_vert` (Japanese Vertical)
+ `spa` (Spanish)

### `TIKA_TESSERACT_OCR_TIMEOUT`

Set the timeout of tesseract ocr execution. Default is `120`.

### `TIKA_TESSERACT_OCR_AUTO_ROTATE`

Set `true` to automatic rotate image if needs. Default is `false`.

### `TIKA_PDF_INCLUDE_BOOKMARK`

Set `true` to enable bookmark extraction. Default is `false`.

### `TIKA_PDF_INCLUDE_ANNOTATION`

Set `true` to enable annotation extraction. Default is `false`.

### `TIKA_PDF_OCR_STRATEGY`

Set an OCR stragegy string. Default is `no_ocr`.

**OCR strategy values**
+ `no_ocr` (default)
+ `ocr_only`
+ `ocr_and_text`
+ `auto`
