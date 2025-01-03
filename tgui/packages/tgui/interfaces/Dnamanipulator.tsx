import { Section } from 'tgui-core/components';

import { Window } from '../layouts';

export const DnaManipulator = () => {
  return (
    <Window width={400} height={500} theme="default">
      <Window.Content>
        <Section title="DNA Manipulator">
          <Flex direction="column" gap={2}>
            <Flex.Item>
              <Section title="Section 1">
                {/* Placeholder for content */}
              </Section>
            </Flex.Item>
            <Flex.Item>
              <Section title="Section 2">
                {/* Placeholder for content */}
              </Section>
            </Flex.Item>
            <Flex.Item>
              <Section title="Section 3">
                {/* Placeholder for content */}
              </Section>
            </Flex.Item>
          </Flex>
        </Section>
      </Window.Content>
    </Window>
  );
};
