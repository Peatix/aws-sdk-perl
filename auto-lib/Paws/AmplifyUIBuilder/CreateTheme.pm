
package Paws::AmplifyUIBuilder::CreateTheme;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentName', required => 1);
  has ThemeToCreate => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CreateThemeData', traits => ['NameInRequest'], request_name => 'themeToCreate', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ThemeToCreate');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTheme');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app/{appId}/environment/{environmentName}/themes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::CreateThemeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CreateTheme - Arguments for method CreateTheme on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTheme on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method CreateTheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTheme.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $CreateThemeResponse = $amplifyuibuilder->CreateTheme(
      AppId           => 'MyString',
      EnvironmentName => 'MyString',
      ThemeToCreate   => {
        Name   => 'MyThemeName',    # min: 1, max: 255
        Values => [
          {
            Key   => 'MyString',
            Value => {
              Children => <ThemeValuesList>,
              Value    => 'MyString',
            },    # OPTIONAL
          },
          ...
        ],
        Overrides => [
          {
            Key   => 'MyString',
            Value => {
              Children => <ThemeValuesList>,
              Value    => 'MyString',
            },    # OPTIONAL
          },
          ...
        ],
        Tags => {
          'MyTagKey' =>
            'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
        },    # OPTIONAL
      },
      ClientToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Entity = $CreateThemeResponse->Entity;

    # Returns a L<Paws::AmplifyUIBuilder::CreateThemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/CreateTheme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID of the Amplify app associated with the theme.



=head2 ClientToken => Str

The unique client token.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the backend environment that is a part of the Amplify app.



=head2 B<REQUIRED> ThemeToCreate => L<Paws::AmplifyUIBuilder::CreateThemeData>

Represents the configuration of the theme to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTheme in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

