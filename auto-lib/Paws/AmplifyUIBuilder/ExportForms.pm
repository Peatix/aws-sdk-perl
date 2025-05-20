
package Paws::AmplifyUIBuilder::ExportForms;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportForms');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export/app/{appId}/environment/{environmentName}/forms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::ExportFormsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ExportForms - Arguments for method ExportForms on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportForms on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method ExportForms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportForms.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $ExportFormsResponse = $amplifyuibuilder->ExportForms(
      AppId           => 'MyString',
      EnvironmentName => 'MyString',
      NextToken       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entities  = $ExportFormsResponse->Entities;
    my $NextToken = $ExportFormsResponse->NextToken;

    # Returns a L<Paws::AmplifyUIBuilder::ExportFormsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/ExportForms>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app to export forms to.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportForms in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

