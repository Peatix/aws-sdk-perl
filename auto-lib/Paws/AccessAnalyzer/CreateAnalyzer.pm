
package Paws::AccessAnalyzer::CreateAnalyzer;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerName', required => 1);
  has ArchiveRules => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::InlineArchiveRule]', traits => ['NameInRequest'], request_name => 'archiveRules');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzerConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has Tags => (is => 'ro', isa => 'Paws::AccessAnalyzer::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnalyzer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::CreateAnalyzerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CreateAnalyzer - Arguments for method CreateAnalyzer on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnalyzer on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method CreateAnalyzer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnalyzer.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $CreateAnalyzerResponse = $access -analyzer->CreateAnalyzer(
      AnalyzerName => 'MyName',
      Type         => 'ACCOUNT',
      ArchiveRules => [
        {
          Filter => {
            'MyString' => {
              Contains => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
              Eq       => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
              Exists   => 1,                      # OPTIONAL
              Neq      => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
            },
          },
          RuleName => 'MyName',                   # min: 1, max: 255

        },
        ...
      ],    # OPTIONAL
      ClientToken   => 'MyString',    # OPTIONAL
      Configuration => {
        UnusedAccess => {
          AnalysisRule => {
            Exclusions => [
              {
                AccountIds   => [ 'MyString', ... ],    # OPTIONAL
                ResourceTags => [ { 'MyString' => 'MyString', }, ... ]
                ,                                       # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          UnusedAccessAge => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateAnalyzerResponse->Arn;

    # Returns a L<Paws::AccessAnalyzer::CreateAnalyzerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/CreateAnalyzer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer to create.



=head2 ArchiveRules => ArrayRef[L<Paws::AccessAnalyzer::InlineArchiveRule>]

Specifies the archive rules to add for the analyzer. Archive rules
automatically archive findings that meet the criteria you define for
the rule.



=head2 ClientToken => Str

A client token.



=head2 Configuration => L<Paws::AccessAnalyzer::AnalyzerConfiguration>

Specifies the configuration of the analyzer. If the analyzer is an
unused access analyzer, the specified scope of unused access is used
for the configuration.



=head2 Tags => L<Paws::AccessAnalyzer::TagsMap>

An array of key-value pairs to apply to the analyzer. You can use the
set of Unicode letters, digits, whitespace, C<_>, C<.>, C</>, C<=>,
C<+>, and C<->.

For the tag key, you can specify a value that is 1 to 128 characters in
length and cannot be prefixed with C<aws:>.

For the tag value, you can specify a value that is 0 to 256 characters
in length.



=head2 B<REQUIRED> Type => Str

The type of analyzer to create. Only C<ACCOUNT>, C<ORGANIZATION>,
C<ACCOUNT_UNUSED_ACCESS>, and C<ORGANIZATION_UNUSED_ACCESS> analyzers
are supported. You can create only one analyzer per account per Region.
You can create up to 5 analyzers per organization per Region.

Valid values are: C<"ACCOUNT">, C<"ORGANIZATION">, C<"ACCOUNT_UNUSED_ACCESS">, C<"ORGANIZATION_UNUSED_ACCESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnalyzer in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

