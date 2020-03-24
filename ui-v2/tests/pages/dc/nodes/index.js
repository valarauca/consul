export default function(visitable, clickable, attribute, collection, filter) {
  const node = {
    name: attribute('data-test-node'),
    node: clickable('header a'),
  };
  return {
    visit: visitable('/:dc/nodes'),
    nodes: collection('[data-test-node]', node),
    filter: filter,
  };
}
