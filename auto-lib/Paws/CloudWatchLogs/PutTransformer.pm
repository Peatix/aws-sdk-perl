
package Paws::CloudWatchLogs::PutTransformer;
  use Moose;
  has LogGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupIdentifier' , required => 1);
  has TransformerConfig => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::Processor]', traits => ['NameInRequest'], request_name => 'transformerConfig' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTransformer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutTransformer - Arguments for method PutTransformer on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTransformer on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutTransformer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTransformer.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->PutTransformer(
      LogGroupIdentifier => 'MyLogGroupIdentifier',
      TransformerConfig  => [
        {
          AddKeys => {
            Entries => [
              {
                Key               => 'MyKey',            # min: 1, max: 128
                Value             => 'MyAddKeyValue',    # min: 1, max: 256
                OverwriteIfExists => 1,                  # OPTIONAL
              },
              ...
            ],    # min: 1, max: 5

          },    # OPTIONAL
          CopyValue => {
            Entries => [
              {
                Source            => 'MySource',    # min: 1, max: 128
                Target            => 'MyTarget',    # min: 1, max: 128
                OverwriteIfExists => 1,             # OPTIONAL
              },
              ...
            ],    # min: 1, max: 5

          },    # OPTIONAL
          Csv => {
            Columns => [
              'MyColumn', ...    # min: 1, max: 128
            ],    # max: 100; OPTIONAL
            Delimiter      => 'MyDelimiter',         # min: 1, max: 2; OPTIONAL
            QuoteCharacter => 'MyQuoteCharacter',    # min: 1, max: 1; OPTIONAL
            Source         => 'MySource',            # min: 1, max: 128
          },    # OPTIONAL
          DateTimeConverter => {
            MatchPatterns => [
              'MyMatchPattern', ...    # min: 1
            ],    # min: 1, max: 5
            Source         => 'MySource',            # min: 1, max: 128
            Target         => 'MyTarget',            # min: 1, max: 128
            Locale         => 'MyLocale',            # min: 1; OPTIONAL
            SourceTimezone => 'MySourceTimezone',    # min: 1; OPTIONAL
            TargetFormat   => 'MyTargetFormat',      # min: 1, max: 64; OPTIONAL
            TargetTimezone => 'MyTargetTimezone',    # min: 1; OPTIONAL
          },    # OPTIONAL
          DeleteKeys => {
            WithKeys => [
              'MyWithKey', ...    # min: 1
            ],    # min: 1, max: 5

          },    # OPTIONAL
          Grok => {
            Match  => 'MyGrokMatch',    # min: 1, max: 512
            Source => 'MySource',       # min: 1, max: 128
          },    # OPTIONAL
          ListToMap => {
            Key              => 'MyKey',         # min: 1, max: 128
            Source           => 'MySource',      # min: 1, max: 128
            Flatten          => 1,               # OPTIONAL
            FlattenedElement => 'first',         # values: first, last; OPTIONAL
            Target           => 'MyTarget',      # min: 1, max: 128
            ValueKey         => 'MyValueKey',    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          LowerCaseString => {
            WithKeys => [
              'MyWithKey', ...    # min: 1
            ],    # min: 1, max: 10

          },    # OPTIONAL
          MoveKeys => {
            Entries => [
              {
                Source            => 'MySource',    # min: 1, max: 128
                Target            => 'MyTarget',    # min: 1, max: 128
                OverwriteIfExists => 1,             # OPTIONAL
              },
              ...
            ],    # min: 1, max: 5

          },    # OPTIONAL
          ParseCloudfront => {
            Source => 'MySource',    # min: 1, max: 128
          },    # OPTIONAL
          ParseJSON => {
            Destination => 'MyDestinationField',    # min: 1, max: 128; OPTIONAL
            Source      => 'MySource',              # min: 1, max: 128
          },    # OPTIONAL
          ParseKeyValue => {
            Destination    => 'MyDestinationField', # min: 1, max: 128; OPTIONAL
            FieldDelimiter =>
              'MyParserFieldDelimiter',             # min: 1, max: 128; OPTIONAL
            KeyPrefix         => 'MyKeyPrefix',     # min: 1, max: 128; OPTIONAL
            KeyValueDelimiter =>
              'MyKeyValueDelimiter',                # min: 1, max: 128; OPTIONAL
            NonMatchValue     => 'MyNonMatchValue', # min: 1, max: 128; OPTIONAL
            OverwriteIfExists => 1,                 # OPTIONAL
            Source            => 'MySource',        # min: 1, max: 128
          },    # OPTIONAL
          ParsePostgres => {
            Source => 'MySource',    # min: 1, max: 128
          },    # OPTIONAL
          ParseRoute53 => {
            Source => 'MySource',    # min: 1, max: 128
          },    # OPTIONAL
          ParseVPC => {
            Source => 'MySource',    # min: 1, max: 128
          },    # OPTIONAL
          ParseWAF => {
            Source => 'MySource',    # min: 1, max: 128
          },    # OPTIONAL
          RenameKeys => {
            Entries => [
              {
                Key               => 'MyKey',         # min: 1, max: 128
                RenameTo          => 'MyRenameTo',    # min: 1, max: 128
                OverwriteIfExists => 1,               # OPTIONAL
              },
              ...
            ],    # min: 1, max: 5

          },    # OPTIONAL
          SplitString => {
            Entries => [
              {
                Delimiter => 'MySplitStringDelimiter',    # min: 1, max: 128
                Source    => 'MySource',                  # min: 1, max: 128

              },
              ...
            ],    # min: 1, max: 10

          },    # OPTIONAL
          SubstituteString => {
            Entries => [
              {
                From   => 'MyFromKey',    # min: 1, max: 128
                Source => 'MySource',     # min: 1, max: 128
                To     => 'MyToKey',      # min: 1, max: 128

              },
              ...
            ],    # min: 1, max: 10

          },    # OPTIONAL
          TrimString => {
            WithKeys => [
              'MyWithKey', ...    # min: 1
            ],    # min: 1, max: 10

          },    # OPTIONAL
          TypeConverter => {
            Entries => [
              {
                Key  => 'MyKey',      # min: 1, max: 128
                Type => 'boolean',    # values: boolean, integer, double, string

              },
              ...
            ],    # min: 1, max: 5

          },    # OPTIONAL
          UpperCaseString => {
            WithKeys => [
              'MyWithKey', ...    # min: 1
            ],    # min: 1, max: 10

          },    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutTransformer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupIdentifier => Str

Specify either the name or ARN of the log group to create the
transformer for.



=head2 B<REQUIRED> TransformerConfig => ArrayRef[L<Paws::CloudWatchLogs::Processor>]

This structure contains the configuration of this log transformer. A
log transformer is an array of processors, where each processor applies
one type of transformation to the log events that are ingested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTransformer in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

