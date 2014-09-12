cucumber-strict-bug
===================

Cucumber throws a NullPointerException when running --strict on an unimplemented feature.

The command to run is:
```
./gradlew -PadditionalArgs=--strict cucumber
```

The result of the above command:


	Exception in thread "main" cucumber.runtime.CucumberException: java.lang.NullPointerException
		at cucumber.runtime.formatter.JUnitFormatter.sumTimes(JUnitFormatter.java:176)
		at cucumber.runtime.formatter.JUnitFormatter.done(JUnitFormatter.java:105)
		at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
		at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
		at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
		at java.lang.reflect.Method.invoke(Method.java:606)
		at cucumber.runtime.Utils$1.call(Utils.java:34)
		at cucumber.runtime.Timeout.timeout(Timeout.java:13)
		at cucumber.runtime.Utils.invoke(Utils.java:30)
		at cucumber.runtime.RuntimeOptions$1.invoke(RuntimeOptions.java:172)
		at com.sun.proxy.$Proxy0.done(Unknown Source)
		at cucumber.runtime.Runtime.run(Runtime.java:112)
		at cucumber.api.cli.Main.run(Main.java:36)
		at cucumber.api.cli.Main.main(Main.java:18)
	Caused by: java.lang.NullPointerException
		at cucumber.runtime.formatter.JUnitFormatter.sumTimes(JUnitFormatter.java:170)
		... 13 more

	FAILURE: Build failed with an exception.

	* Where:
	Script '/Users/bjuhasz/projects/cucumber-strict-bug/gradle/scripts/cucumber.gradle' line: 37

	* What went wrong:
	Execution failed for task ':cucumber'.
	> Process 'command '/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home/bin/java'' finished with non-zero exit value 1

	* Try:
	Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

