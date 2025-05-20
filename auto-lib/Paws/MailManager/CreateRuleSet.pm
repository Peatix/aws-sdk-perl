
package Paws::MailManager::CreateRuleSet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Rule]', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateRuleSet - Arguments for method CreateRuleSet on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRuleSet on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRuleSet.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateRuleSetResponse = $mail -manager->CreateRuleSet(
      RuleSetName => 'MyRuleSetName',
      Rules       => [
        {
          Actions => [
            {
              AddHeader => {
                HeaderName  => 'MyHeaderName',     # min: 1, max: 64
                HeaderValue => 'MyHeaderValue',    # min: 1, max: 128

              },    # OPTIONAL
              Archive => {
                TargetArchive       => 'MyNameOrArn',    # min: 1, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
              },    # OPTIONAL
              DeliverToMailbox => {
                MailboxArn          => 'MyNameOrArn',     # min: 1, max: 2048
                RoleArn             => 'MyIamRoleArn',    # min: 20, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
              },    # OPTIONAL
              DeliverToQBusiness => {
                ApplicationId => 'MyQBusinessApplicationId',  # min: 36, max: 36
                IndexId       => 'MyQBusinessIndexId',        # min: 36, max: 36
                RoleArn             => 'MyIamRoleArn',    # min: 20, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
              },    # OPTIONAL
              Drop => {

              },    # OPTIONAL
              PublishToSns => {
                RoleArn             => 'MyIamRoleArn',     # min: 20, max: 2048
                TopicArn            => 'MySnsTopicArn',    # min: 20, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
                Encoding    => 'UTF-8',     # values: UTF-8, BASE64; OPTIONAL
                PayloadType => 'HEADERS',   # values: HEADERS, CONTENT; OPTIONAL
              },    # OPTIONAL
              Relay => {
                Relay               => 'MyIdOrArn',    # min: 1, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
                MailFrom => 'REPLACE',    # values: REPLACE, PRESERVE; OPTIONAL
              },    # OPTIONAL
              ReplaceRecipient => {
                ReplaceWith => [
                  'MyEmailAddress', ...    # max: 254
                ],    # min: 1, max: 100; OPTIONAL
              },    # OPTIONAL
              Send => {
                RoleArn             => 'MyIamRoleArn',    # min: 20, max: 2048
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
              },    # OPTIONAL
              WriteToS3 => {
                RoleArn             => 'MyIamRoleArn',    # min: 20, max: 2048
                S3Bucket            => 'MyS3Bucket',      # min: 1, max: 62
                ActionFailurePolicy =>
                  'CONTINUE',    # values: CONTINUE, DROP; OPTIONAL
                S3Prefix      => 'MyS3Prefix',    # min: 1, max: 62; OPTIONAL
                S3SseKmsKeyId => 'MyKmsKeyId',    # min: 20, max: 2048; OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 10
          Conditions => [
            {
              BooleanExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'READ_RECEIPT_REQUESTED'
                  , # values: READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED; OPTIONAL
                  IsInAddressList => {
                    AddressLists => [ 'MyAddressListArn', ... ]
                    ,    # min: 1, max: 1
                    Attribute => 'RECIPIENT'
                    ,    # values: RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC

                  },    # OPTIONAL
                },
                Operator => 'IS_TRUE',    # values: IS_TRUE, IS_FALSE

              },    # OPTIONAL
              DmarcExpression => {
                Operator => 'EQUALS',    # values: EQUALS, NOT_EQUALS
                Values   => [
                  'NONE', ...            # values: NONE, QUARANTINE, REJECT
                ],    # min: 1, max: 10

              },    # OPTIONAL
              IpExpression => {
                Evaluate => {
                  Attribute => 'SOURCE_IP',    # values: SOURCE_IP; OPTIONAL
                },
                Operator =>
                  'CIDR_MATCHES',    # values: CIDR_MATCHES, NOT_CIDR_MATCHES
                Values => [
                  'MyRuleIpStringValue', ...    # min: 1, max: 43
                ],    # min: 1, max: 10

              },    # OPTIONAL
              NumberExpression => {
                Evaluate => {
                  Attribute => 'MESSAGE_SIZE',  # values: MESSAGE_SIZE; OPTIONAL
                },
                Operator => 'EQUALS'
                , # values: EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
                Value => 1,

              },    # OPTIONAL
              StringExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'MAIL_FROM'
                  , # values: MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC; OPTIONAL
                  MimeHeaderAttribute => 'MyMimeHeaderAttribute',    # OPTIONAL
                },
                Operator => 'EQUALS'
                , # values: EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
                Values => [
                  'MyRuleStringValue', ...    # min: 1, max: 4096
                ],    # min: 1, max: 10

              },    # OPTIONAL
              VerdictExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'SPF',    # values: SPF, DKIM; OPTIONAL
                },
                Operator => 'EQUALS',    # values: EQUALS, NOT_EQUALS
                Values   => [
                  'PASS', ...    # values: PASS, FAIL, GRAY, PROCESSING_FAILED
                ],    # min: 1, max: 10

              },    # OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
          Name   => 'MyRuleName',    # min: 1, max: 32; OPTIONAL
          Unless => [
            {
              BooleanExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'READ_RECEIPT_REQUESTED'
                  , # values: READ_RECEIPT_REQUESTED, TLS, TLS_WRAPPED; OPTIONAL
                  IsInAddressList => {
                    AddressLists => [ 'MyAddressListArn', ... ]
                    ,    # min: 1, max: 1
                    Attribute => 'RECIPIENT'
                    ,    # values: RECIPIENT, MAIL_FROM, SENDER, FROM, TO, CC

                  },    # OPTIONAL
                },
                Operator => 'IS_TRUE',    # values: IS_TRUE, IS_FALSE

              },    # OPTIONAL
              DmarcExpression => {
                Operator => 'EQUALS',    # values: EQUALS, NOT_EQUALS
                Values   => [
                  'NONE', ...            # values: NONE, QUARANTINE, REJECT
                ],    # min: 1, max: 10

              },    # OPTIONAL
              IpExpression => {
                Evaluate => {
                  Attribute => 'SOURCE_IP',    # values: SOURCE_IP; OPTIONAL
                },
                Operator =>
                  'CIDR_MATCHES',    # values: CIDR_MATCHES, NOT_CIDR_MATCHES
                Values => [
                  'MyRuleIpStringValue', ...    # min: 1, max: 43
                ],    # min: 1, max: 10

              },    # OPTIONAL
              NumberExpression => {
                Evaluate => {
                  Attribute => 'MESSAGE_SIZE',  # values: MESSAGE_SIZE; OPTIONAL
                },
                Operator => 'EQUALS'
                , # values: EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUAL, GREATER_THAN_OR_EQUAL
                Value => 1,

              },    # OPTIONAL
              StringExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'MAIL_FROM'
                  , # values: MAIL_FROM, HELO, RECIPIENT, SENDER, FROM, SUBJECT, TO, CC; OPTIONAL
                  MimeHeaderAttribute => 'MyMimeHeaderAttribute',    # OPTIONAL
                },
                Operator => 'EQUALS'
                , # values: EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
                Values => [
                  'MyRuleStringValue', ...    # min: 1, max: 4096
                ],    # min: 1, max: 10

              },    # OPTIONAL
              VerdictExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'SPF',    # values: SPF, DKIM; OPTIONAL
                },
                Operator => 'EQUALS',    # values: EQUALS, NOT_EQUALS
                Values   => [
                  'PASS', ...    # values: PASS, FAIL, GRAY, PROCESSING_FAILED
                ],    # min: 1, max: 10

              },    # OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
        },
        ...
      ],
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RuleSetId = $CreateRuleSetResponse->RuleSetId;

    # Returns a L<Paws::MailManager::CreateRuleSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateRuleSet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique token that Amazon SES uses to recognize subsequent retries of
the same request.



=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::MailManager::Rule>]

Conditional rules that are evaluated for determining actions on email.



=head2 B<REQUIRED> RuleSetName => Str

A user-friendly name for the rule set.



=head2 Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRuleSet in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

