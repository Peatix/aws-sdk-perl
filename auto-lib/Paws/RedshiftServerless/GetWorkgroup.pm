
package Paws::RedshiftServerless::GetWorkgroup;
  use Moose;
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkgroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetWorkgroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetWorkgroup - Arguments for method GetWorkgroup on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkgroup on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetWorkgroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkgroup.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetWorkgroupResponse = $redshift -serverless->GetWorkgroup(
      WorkgroupName => 'MyWorkgroupName',

    );

    # Results:
    my $Workgroup = $GetWorkgroupResponse->Workgroup;

    # Returns a L<Paws::RedshiftServerless::GetWorkgroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetWorkgroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup to return information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkgroup in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

