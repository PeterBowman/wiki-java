module org.wikipedia {
	exports org.wikipedia;
	exports org.wikipedia.tools;
	exports org.wikipedia.servlets;
	exports org.wikiutils;

	requires java.desktop;
	requires java.logging;
	requires java.net.http;
	requires org.junit.jupiter.api;
}