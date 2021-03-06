const { expect } = require('chai');

const { wdio } = require('../../lib/wdio-config');


step('Verify an element with selector: <selector> contains text: <expectedText>', async (selector, expectedText) => {
  const actualText = await wdio.client.execute(`return document.querySelector("${selector}").textContent`);
  /**
   * Text can be get by using $ as well like below-
   * const elem = await wdio.client.$(selector);
   * const actualText = await elem.getText();
   */
  expect(actualText).to.include(expectedText);
});
