export default function(visitable, clickable, attribute, collection, page, popoverSort) {
  return {
    visit: visitable('/:dc/services'),
    services: collection('[data-test-service]', {
      name: attribute('data-test-service'),
      service: clickable('a'),
      externalSource: attribute('data-test-external-source', 'a span'),
    }),
    dcs: collection('[data-test-datacenter-picker]', {
      name: clickable('a'),
    }),
    navigation: page.navigation,
    home: clickable('[data-test-home]'),
    sort: popoverSort,
  };
}
