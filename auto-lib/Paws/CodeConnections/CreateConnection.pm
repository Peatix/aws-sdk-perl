
package Paws::CodeConnections::CreateConnection;
  use Moose;
  has ConnectionName => (is => 'ro', isa => 'Str', required => 1);
  has HostArn => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeConnections::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::CreateConnectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::CreateConnection - Arguments for method CreateConnection on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $CreateConnectionOutput = $codeconnections->CreateConnection(
      ConnectionName => 'MyConnectionName',
      HostArn        => 'MyHostArn',          # OPTIONAL
      ProviderType   => 'Bitbucket',          # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ConnectionArn = $CreateConnectionOutput->ConnectionArn;
    my $Tags          = $CreateConnectionOutput->Tags;

    # Returns a L<Paws::CodeConnections::CreateConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/CreateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionName => Str

The name of the connection to be created.



=head2 HostArn => Str

The Amazon Resource Name (ARN) of the host associated with the
connection to be created.



=head2 ProviderType => Str

The name of the external provider where your third-party code
repository is configured.

Valid values are: C<"Bitbucket">, C<"GitHub">, C<"GitHubEnterpriseServer">, C<"GitLab">, C<"GitLabSelfManaged">

=head2 Tags => ArrayRef[L<Paws::CodeConnections::Tag>]

The key-value pair to use when tagging the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

