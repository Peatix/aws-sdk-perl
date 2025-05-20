
package Paws::CodeConnections::DeleteRepositoryLink;
  use Moose;
  has RepositoryLinkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepositoryLink');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::DeleteRepositoryLinkOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::DeleteRepositoryLink - Arguments for method DeleteRepositoryLink on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepositoryLink on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method DeleteRepositoryLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepositoryLink.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $DeleteRepositoryLinkOutput = $codeconnections->DeleteRepositoryLink(
      RepositoryLinkId => 'MyRepositoryLinkId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/DeleteRepositoryLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryLinkId => Str

The ID of the repository link to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepositoryLink in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

