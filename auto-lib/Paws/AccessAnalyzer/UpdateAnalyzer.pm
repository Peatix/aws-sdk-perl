
package Paws::AccessAnalyzer::UpdateAnalyzer;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analyzerName', required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::AccessAnalyzer::AnalyzerConfiguration', traits => ['NameInRequest'], request_name => 'configuration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnalyzer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer/{analyzerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::UpdateAnalyzerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::UpdateAnalyzer - Arguments for method UpdateAnalyzer on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnalyzer on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method UpdateAnalyzer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnalyzer.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $UpdateAnalyzerResponse = $access -analyzer->UpdateAnalyzer(
      AnalyzerName  => 'MyName',
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
    );

    # Results:
    my $Configuration = $UpdateAnalyzerResponse->Configuration;

    # Returns a L<Paws::AccessAnalyzer::UpdateAnalyzerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/UpdateAnalyzer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer to modify.



=head2 Configuration => L<Paws::AccessAnalyzer::AnalyzerConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnalyzer in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

