import 'dart:convert';
import 'dart:io';

import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';

const _encoder = JsonEncoder.withIndent(' ');

@CloudFunction()
void cloudEventFunction(CloudEvent event, RequestContext context) {
  context.logger
      .info('[CloudEvent] source: ${event.source}, subject: ${event.subject}');
  stderr.writeln(_encoder.convert(event));
}

@CloudFunction()
Response httpFunction(Request request) => Response.ok('Hello, World!');
