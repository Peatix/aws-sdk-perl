
package Paws::AppSync::PutGraphqlApiEnvironmentVariables;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::AppSync::EnvironmentVariableMap', traits => ['NameInRequest'], request_name => 'environmentVariables', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGraphqlApiEnvironmentVariables');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/environmentVariables');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::PutGraphqlApiEnvironmentVariablesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::PutGraphqlApiEnvironmentVariables - Arguments for method PutGraphqlApiEnvironmentVariables on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutGraphqlApiEnvironmentVariables on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method PutGraphqlApiEnvironmentVariables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutGraphqlApiEnvironmentVariables.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $PutGraphqlApiEnvironmentVariablesResponse =
      $appsync->PutGraphqlApiEnvironmentVariables(
      ApiId                => 'MyString',
      EnvironmentVariables => {
        'MyEnvironmentVariableKey' =>
          'MyEnvironmentVariableValue',  # key: min: 2, max: 64, value: max: 512
      },

      );

    # Results:
    my $EnvironmentVariables =
      $PutGraphqlApiEnvironmentVariablesResponse->EnvironmentVariables;

 # Returns a L<Paws::AppSync::PutGraphqlApiEnvironmentVariablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/PutGraphqlApiEnvironmentVariables>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID of the API to which the environmental variable list will be
written.



=head2 B<REQUIRED> EnvironmentVariables => L<Paws::AppSync::EnvironmentVariableMap>

The list of environmental variables to add to the API.

When creating an environmental variable key-value pair, it must follow
the additional constraints below:

=over

=item *

Keys must begin with a letter.

=item *

Keys must be at least two characters long.

=item *

Keys can only contain letters, numbers, and the underscore character
(_).

=item *

Values can be up to 512 characters long.

=item *

You can configure up to 50 key-value pairs in a GraphQL API.

=back

You can create a list of environmental variables by adding it to the
C<environmentVariables> payload as a list in the format
C<{"key1":"value1","key2":"value2", E<hellip>}>. Note that each call of
the C<PutGraphqlApiEnvironmentVariables> action will result in the
overwriting of the existing environmental variable list of that API.
This means the existing environmental variables will be lost. To avoid
this, you must include all existing and new environmental variables in
the list each time you call this action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutGraphqlApiEnvironmentVariables in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

