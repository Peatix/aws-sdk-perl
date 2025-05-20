
package Paws::Glue::DeleteIntegrationTableProperties;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIntegrationTableProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteIntegrationTablePropertiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteIntegrationTableProperties - Arguments for method DeleteIntegrationTableProperties on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntegrationTableProperties on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteIntegrationTableProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntegrationTableProperties.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteIntegrationTablePropertiesResponse =
      $glue->DeleteIntegrationTableProperties(
      ResourceArn => 'MyString128',
      TableName   => 'MyString128',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteIntegrationTableProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.



=head2 B<REQUIRED> TableName => Str

The name of the table to be replicated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntegrationTableProperties in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

